import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/count_provide.dart';

class countexample extends StatefulWidget {
  const countexample({super.key});

  @override
  State<countexample> createState() => _countexampleState();
}

class _countexampleState extends State<countexample> {
  @override
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countprovider= Provider.of<count_provider>(context,listen: false);
    Timer.periodic(Duration(seconds: 1), (timer){
      countprovider.setcount();
    });
  }
  Widget build(BuildContext context) {
    final countprovider= Provider.of<count_provider>(context,listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("subscribe"),
      ),
      body: Center(
        child: Consumer<count_provider>(builder: (context,value,child){
          return Text(value.count.toString(),style: TextStyle(fontSize: 50),);
        })
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.setcount();
      },child: Icon(Icons.add),),
    );
  }
}
