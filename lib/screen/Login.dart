import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement_course/provider/Auth_Provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Build");
   // final authprovider=Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             TextField(
               controller: emailcontroller,
               decoration: InputDecoration(
                 hintText: "email",
               ),
             ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(height: 40,),
            Consumer<AuthProvider>(builder: (context,value,child){
              return  GestureDetector(
                onTap: (){
                  value.Login(emailcontroller.text.toString(),passwordcontroller.text.toString());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child:value.Loading?CircularProgressIndicator(color: Colors.white,) : Text("Login"),),
                ),
              );
            }),

          ],
        ),
      ),
    );
  }
}
