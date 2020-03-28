import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';

import 'WeatherDetail.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String city="";
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        backgroundColor: Colors.orange,),
      body:
        Column(
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration(hintText: 'taper une ville'),
                onChanged: (value){
                  setState(() {
                    this.city=value;
                  });
                },
              ),
            ),
            Container(child: RaisedButton(
              child: Text('Get Weather'),
              textColor:Colors.white , onPressed: (){
                //appel au navigateur
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>WeatherDetail(city)));
           //   cityEditingController.text="";
            }, color: Colors.deepOrangeAccent,

            ),)
          ],
        )
    );
  } }






