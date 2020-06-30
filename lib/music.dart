import 'package:flutter/material.dart';
class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar:AppBar(
        title:Text("Music"),
      ),
      body: ListView(
        children:<Widget>[
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Memories",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Maroon5",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("All of the Stars",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("ED Sheen",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("On my Way",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Alan Walker",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Here with Me",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Marshmello",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Wavin' Flag",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("K'NAAN",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Senorita",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Shawn Mendes",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Taki Taki",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("DJ Snake",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("A Sky full of Stars",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Coldplay",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
           ListTile(
            dense: true,
            contentPadding: EdgeInsets.all(20.0),
            leading:Icon(Icons.music_note,color: Colors.white,),
            title: Text("Something Just Like This",style: TextStyle(
              color:Colors.white
            ),),
            isThreeLine: true,
            subtitle: Text("Coldplay",style: TextStyle(color:Colors.white70),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
        ]
      ),
    );
  }
}