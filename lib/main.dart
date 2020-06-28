import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'first.dart';
import 'signup.dart';




class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.green,
        primaryColorBrightness:Brightness.dark,
        
        
      ),
      home: FirstScreen(),
      darkTheme: ThemeData.dark(),
      

    );
  }
}
String jwt;
Future<void> main() async{
SharedPreferences prefs=await SharedPreferences.getInstance();
jwt=prefs.getString("verifyUser");

print(jwt);

  runApp(App());
}