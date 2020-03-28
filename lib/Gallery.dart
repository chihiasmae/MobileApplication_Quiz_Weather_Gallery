import 'package:flutter/material.dart';
import './GalleryDataPage.dart';
class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
String keyword="";
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),backgroundColor: Colors.orange,),
      body: Column(
        children: <Widget>[
          Container(child: TextField(
            style: TextStyle(fontSize: 22),
            onChanged: (value){
              setState(() {
                this.keyword=value;
              });
            },
          ),padding: EdgeInsets.all(10),),
          Container( width:double.infinity,child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryDataPage(keyword)));
            },
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: Text("Get image",style: TextStyle(fontSize: 22 ,color: Colors.white),

            ),

          )),
        ],
      )
    );
  } }
