import 'package:flutter/material.dart';


class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List<String> tasks=[];
 final TextEditingController control=TextEditingController();
 int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,

      
          body:Column(
          
            children: <Widget>[
              Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(Icons.list,size: 100.0,),
                    Text("TO DO",style: TextStyle(fontSize:20.0,color: Colors.white),),

                  ]
                ),
                

              ),
              Expanded(
                
                
        child:Container(
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0)
            ),
          ),
              child:Column(
                children:<Widget>[
              
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(20.0),
                          child: TextField(
                    controller: control,
                   onSubmitted: (text){
                     tasks.add(text);
                     control.clear();
                     setState(() {
                       
                     });
                   },
                  ),
              ),
                Expanded(child: 
                new ListView.builder(
                  shrinkWrap: false,
                  itemCount: tasks.length,
                  itemBuilder:(context,index){
                    return ListTile(contentPadding:EdgeInsets.only(left:50.0),dense:true,title: Text(tasks[index],style: TextStyle(fontSize:50.0),),);


                  }
                  )),
        ],
              ), 
        ) 
      ),
            ],
          ),
    );
  } 

  }