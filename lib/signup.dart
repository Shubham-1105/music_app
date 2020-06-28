import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'first.dart';




class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey=GlobalKey<FormState>();
  final myController1=TextEditingController();
  final myController2=TextEditingController();
 
 
  bool _secureText=true;

  void toggle(){
    setState(() {
      _secureText=!_secureText;
    });
  }

storeLocal()async{
  SharedPreferences store=await SharedPreferences.getInstance();
  store.setString('verifyUser', 'true');
}
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: myController1,
                
                validator:(value){
                    if(value.isEmpty){
                      return "Enter your Name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText:"Enter Name",
                    border: const OutlineInputBorder(),
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                  ) ,


              ),
              SizedBox(
                height: 20.0,


              ),
              TextFormField(
                
                keyboardType: TextInputType.number,
                validator:(value)=>value.length!=10?"Enter 10 digits only":null,
                  decoration: InputDecoration(
                    hintText:"Enter Contact Number",
                    border: const OutlineInputBorder(),
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                  ) ,


              ),
              SizedBox(
                height:20.0
              ),
              TextFormField(
                
                keyboardType: TextInputType.emailAddress,
                validator: (value){
                  if(value.isEmpty)
                  return "Enter Email ID";
                  else
                  return null;
                },
              
                  decoration: InputDecoration(
                    hintText:"Enter Email",
                    border: const OutlineInputBorder(),
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                  ) ,


              ),
              SizedBox(
                height:20.0
              ),
              TextFormField(
                
                keyboardType: TextInputType.text,
                
              
                  decoration: InputDecoration(
                    hintText:"Enter College Name",
                    border: const OutlineInputBorder(),
                    
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                  ) ,


              ),
              SizedBox(
                height:20.0
              ),
              TextFormField(
                
                keyboardType: TextInputType.url,
                
              
                  decoration: InputDecoration(
                    hintText:"Enter Linkedln ID",
                    border: const OutlineInputBorder(),
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                  ) ,


              ),
              SizedBox(
                height:40.0
              ),
              TextFormField(
                  controller: myController2,
                  decoration: InputDecoration(
                    hintText:"Enter Password",
                    border: const OutlineInputBorder(),
                    icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                    
                  ) ,
                   validator: (value) => value.length < 6 ? 'Password too short.' : null,
                  
                  obscureText: _secureText,
                ),
                SizedBox(height: 40.0,),
              
              Padding(padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
              elevation: 70.0,
              highlightElevation: 110.0,
              shape:StadiumBorder(),
               padding:EdgeInsets.all(20.0),
               focusElevation: 40.0,
               onPressed: () {
                 
                 

                 
                 if(_formKey.currentState.validate()){
                   setState(() {
                     storeLocal();
                   });
                   
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
                   FirstScreen()));
                   
                 
                 }
                

            },
            child: Text("Sign Up",style: TextStyle(fontSize:20.0),),),)


            ],
          ),
          
        ),
      ),
    );
  }
}




