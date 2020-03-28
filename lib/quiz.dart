import 'package:flutter/material.dart';
class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}
class _QuizState extends State<Quiz> {
  int currentQuestion=0;
  int score=0;
  final quiz=[
    {'title':'Question 1','answers':[
      {'answer':'Answer 11', 'correct':false},
    {'answer':'Answer 12', 'correct':false},
    {'answer':'Answer 13', 'correct':true}, ]},
    {'title':'Question 2','answers':[
      {'answer':'Answer 21', 'correct':false},
      {'answer':'Answer 22', 'correct':true},
      {'answer':'Answer 23', 'correct':false},
    ]}
];
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),backgroundColor: Colors.orange,),
      body:
      (this.currentQuestion>=quiz.length)?
          Center(
            child:Column(
              children: <Widget>[
            Text("Score:${100*score/quiz.length}%",
              style:TextStyle(fontSize: 22,color: Colors.blue) ,
            ),
              ],
            )

          )
         : ListView(
            children: <Widget>[
              ListTile(
              title: Center(
                child:
                Text("Question ${currentQuestion+1}/{quiz.length} ",
                style: TextStyle(fontSize: 22,color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),)
              ),
              ),
              ListTile(
                title: Text(quiz[currentQuestion]['title'],style: TextStyle(fontSize: 22),),
              ),
             ...(quiz[currentQuestion]['answers'] as List<Map<String,Object>>).map((answer){
             // ignore: missing_return
            return
                ListTile(
                  title: RaisedButton(
                    color: Colors.blueGrey   ,
                    onPressed: (){
                      setState(() {
                        if(answer['correct']==true){
                          ++score;
                        }

                        ++this.currentQuestion;
                      });
                    },
                    child: Text(answer['answer'],style: TextStyle(fontSize: 22),),
                  ),
                );
              })
            ],
          )
     ,
    );
  } }
