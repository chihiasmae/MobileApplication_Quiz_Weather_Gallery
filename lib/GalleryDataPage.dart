import 'dart:convert';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class GalleryDataPage extends StatefulWidget {
  String keyword;
  GalleryDataPage(this.keyword);
  @override
  _GalleryDataPageState createState() => _GalleryDataPageState();

}

class _GalleryDataPageState extends State<GalleryDataPage> {
  int currentPage=1;
  int size=5;
  List <dynamic> hits=[];
  var galleryData;
  @override
  initState(){
    super.initState();
    this.getData();
  }
  getData(){
    String url="https://pixabay.com/api/?key=15773175-291488c989e30f36ef14f2500&q=${widget.keyword}&page=$currentPage&per_page=$size";
   http.get(url).then((resp){
setState(() {
  galleryData=json.decode(resp.body);
  hits=galleryData['hits'];

});
   }).catchError((err){

   });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.keyword),backgroundColor: Colors.blueGrey,),
      body: 
          (galleryData==null?CircularProgressIndicator():
          ListView.builder(
            itemCount: (galleryData==null?0:hits.length),
              itemBuilder: (context,index){
              return
                   Column(
                     children: <Widget>[
                       Container(
                         width:double.infinity,
                         padding: EdgeInsets.all(10),
                         child: Card(
                           child: Padding(padding: EdgeInsets.all(10),
                             child: Center(
                               child: Text(
                                 hits[index]['tags'],
                                 style: TextStyle(fontSize: 22,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                           color: Colors.blueGrey,
                         ),

                       ),
                       Container(
                         child: Card(
                           child:Image.network(hits[index]['webformatURL']),
                         ),
                       )
                     ],
                   );
              })
          )
      );
    
  }
}
