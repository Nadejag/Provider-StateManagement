import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/Provider_Example2.dart';

class Example_two_Screen extends StatefulWidget {
  const Example_two_Screen({super.key});

  @override
  State<Example_two_Screen> createState() => _Example_two_ScreenState();
}

class _Example_two_ScreenState extends State<Example_two_Screen> {

  @override
  Widget build(BuildContext context) {
    print("Build");
   // final provider=Provider.of<Provider_Example2>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("colors changing"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Provider_Example2>(builder: (context,value,child){
            return Slider(
                min: 0,
                max: 1,
                value: value.value, onChanged: (val){
              value.set(val);
            });
          }),
      Consumer<Provider_Example2>(builder: (context,value,child){
        return  Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(value.value),
                ),
                child: Center(child: Text("Subscribe1")),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(value.value),
                ),
                child: Center(child: Text("Subscribe1")),
              ),
            )
          ],
        );
      })

        ],
      ),
    );
  }
}
