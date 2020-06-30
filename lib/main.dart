import 'package:flutter/material.dart';
import 'package:musicapp/homescreen.dart';
import 'package:musicapp/profile.dart';
import 'package:musicapp/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'first.dart';
import 'todo.dart';
import 'music.dart';

bool jwt;


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.lightBlueAccent
        
        
        
      ),
      initialRoute: jwt? "home":"splash",
      darkTheme: ThemeData.dark(),
      routes: <String,WidgetBuilder>{
        "splash":(context)=>SplashScreen(),
        "home":(context)=>HomeScreen(),
        "first":(context)=>FirstScreen(),
        "/profile":(context)=>HomePage(),
        "/todo":(context)=>ToDo(),
        "/music":(context)=>MusicScreen()

      },
      

    );
  }
}

Future<void> main() 
async{
    WidgetsFlutterBinding.ensureInitialized();
SharedPreferences prefs=await SharedPreferences.getInstance();
jwt=prefs.getBool("verifyUser")??false ;


print(jwt);
  runApp(App());
}