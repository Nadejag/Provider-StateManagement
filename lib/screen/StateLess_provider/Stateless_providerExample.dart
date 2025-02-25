import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifyListener extends StatelessWidget {
  const NotifyListener({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> _count=ValueNotifier<int>(0);
    ValueNotifier<bool> Toggle=ValueNotifier<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: Text("STL Widget Example"),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: Toggle,
              builder: (context,value,child){
               return TextField(
                  obscureText: Toggle.value,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: InkWell(
                          onTap: (){
                            Toggle.value=!Toggle.value;
                          },
                          child: Icon(Toggle.value? Icons.visibility_off_outlined : Icons.visibility))
                  ),
                );
              }),

          Center(
            child: ValueListenableBuilder(
                valueListenable:_count ,
                builder: (context,value,child){
                  return Text(_count.value.toString());
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _count.value++;
        print(_count.value.toString());
      },child: Icon(Icons.add),),
    );
  }
}
