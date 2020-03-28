import 'package:flutter/material.dart';
import './quiz.dart';
import './weather.dart';
import './Gallery.dart';
class MainDrawer extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    children: <Widget>[
    new DrawerHeader( child: Center(
    child: CircleAvatar(
    radius: 50,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTEJjLo8cLA0DEAQzb3PVdWNmuHjKA3RMonEJ88Z9S3lk0CAFR8'),
    ),
    ),
    decoration: BoxDecoration(
    gradient: LinearGradient(colors: [Colors.teal, Colors.amberAccent])),
    ),Divider(color: Colors.white70,),
    ListTile(
    title: Text(
    'Quiz', style: TextStyle(fontSize: 18),
    ),
    trailing: Icon(Icons.arrow_right),
    onTap: () {
    Navigator.of(context).pop();
    Navigator.push(
    context, MaterialPageRoute(builder: (context) => Quiz()));
    }
    ),
      ListTile(
          title: Text(
            'Gallery', style: TextStyle(fontSize: 18),
          ),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Gallery()));
          }
      ),
    Divider(color: Colors.white70,),
    ListTile( title: Text(

    'Weather',style: TextStyle(fontSize: 18),
    ),
    trailing: Icon(Icons.arrow_right),
    onTap: () {
    Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context) =>Weather()));
    }
    )],
    )
    );


  } }
