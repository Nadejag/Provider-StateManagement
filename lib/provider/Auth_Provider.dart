import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
class AuthProvider with ChangeNotifier{
bool _Loading=false;
bool get Loading=> _Loading;

setLoading(bool value){
  _Loading=value;
  notifyListeners();
}


  void Login(String email,String password)async{
  setLoading(true);
    try{
      Response response=await post(Uri.parse('https://reqres.in/api/login'),
          body:{
            'email': email,
             'password':password,
          } );
      if(response.statusCode==200){
        setLoading(false);
        print('successfull');
      }else{
        setLoading(false);
        print('failed');
      }
    }
    catch(e){
      print(e.toString());
    }
  }
}