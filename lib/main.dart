import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/Auth_Provider.dart';
import 'package:provider_statemanagement_course/provider/Theme_Changer_Provider.dart';
import 'package:provider_statemanagement_course/provider/Favorite_Provider4.dart';
import 'package:provider_statemanagement_course/provider/Provider_Example2.dart';
import 'package:provider_statemanagement_course/provider/count_provide.dart';
import 'package:provider_statemanagement_course/screen/DarkTheme/DarkTheme.dart';
import 'package:provider_statemanagement_course/screen/Example_2.dart';
import 'package:provider_statemanagement_course/screen/Favourite/Favourite_screen.dart';
import 'package:provider_statemanagement_course/screen/Login.dart';
import 'package:provider_statemanagement_course/screen/StateLess_provider/Stateless_providerExample.dart';
import 'package:provider_statemanagement_course/screen/count_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final themeChanger=Provider.of<ChangeNotifierProvider>(context);
    return MultiProvider(
        providers: [
             ChangeNotifierProvider(create: (_)=>count_provider()),
            ChangeNotifierProvider(create: (_)=>Provider_Example2()),
          ChangeNotifierProvider(create: (_)=>favouriteitemprovider()),
          ChangeNotifierProvider(create: (_)=>ThemeChanger()),
          ChangeNotifierProvider(create: (_)=>AuthProvider())
    ],

             //This is only for DarkTheme
    //   Builder(builder: (BuildContext context){
    //     final themeChanger=Provider.of<ThemeChanger>(context);
    //     return  MaterialApp(
    //     title: 'Flutter Demo',
    //     themeMode:themeChanger.themMode,
    //     theme: ThemeData(
    //       appBarTheme: AppBarTheme(color: Colors.red),
    //        primaryColor: Colors.green,
    //       primarySwatch: Colors.blue,
    //          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //      useMaterial3: true,
    // ),
    //
    // darkTheme: ThemeData(
    //   brightness: Brightness.dark,
    //    appBarTheme: AppBarTheme(color: Colors.blue),
    //    primarySwatch: Colors.red,
    //     primaryColor: Colors.red,
    //   iconTheme: IconThemeData(
    //     color: Colors.red
    //   )
    // ),
    //
    // home: DarkThemeScreen()
    // );


    child:  MaterialApp(
    title: 'Flutter Demo',
   // home: NotifyListener()
      home: LoginScreen(),
    ),);
    }

  }

