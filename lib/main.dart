import 'package:flutter/material.dart';
import 'package:myapp/main-drawer.dart';

void main(){

  runApp(MaterialApp(home:MyApp(),));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer:MainDrawer(),
       appBar: AppBar(title: Text('First App'),
         backgroundColor: Colors.indigo,),
        body: Center( child: Text(
          'Hello BDCC!',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
      )),
      );

  }
}