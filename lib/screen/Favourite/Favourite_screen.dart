import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/Favorite_Provider4.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selecteditem=[];
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(title: Text("Items List"),),
      body: Column(
        children: [
           Expanded(
             child: ListView.builder(
                 itemCount: 100,
                 itemBuilder: (context,index){
                 return Consumer<favouriteitemprovider>(builder: (context,value,child){
                  return ListTile(
                     onTap: (){
                     if(value.SelectedItem.contains(index)){
                       value.Removeitem(index);
                     }
                     else{
                       value.AddItem(index);
                     }
                     },
                     title: Text("Items "+index.toString()),
                     trailing:value.SelectedItem.contains(index)?Icon(Icons.favorite): Icon(Icons.favorite_border_outlined),
                   );
                 });
             }),
           )
        ],
      ),
    );
  }
}
