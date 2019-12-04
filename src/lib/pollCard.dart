import 'package:flutter/material.dart';

class PollCard extends  StatefulWidget{
  int pos;
  String statement;
  int upvotes;
  int downvotes;
  PollCard( int pos, String statement, int upvotes, int downvotes){
    this.pos= pos;
    this.statement = statement;
    this.upvotes = upvotes;
    this.downvotes = downvotes;
  }
  PollCardUi createState() => PollCardUi(pos, statement,upvotes, downvotes);
}

class PollCardUi extends State<PollCard>{
  int pos;
  String statement;
  int upvotes;
  int downvotes;
  PollCardUi( int pos, String statement, int upvotes, int downvotes){
    this.pos= pos;
    this.statement = statement;
    this.upvotes = upvotes;
    this.downvotes = downvotes;
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text((pos-1).toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                Text(statement,style: TextStyle(fontWeight: FontWeight.bold),),                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  onPressed: (){},
                  child: Column(
                    children: <Widget>[
                      Text("Upvote"),
                      Text(upvotes.toString()),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: (){},
                  child: Column(
                    children: <Widget>[
                      Text("Downvote"),
                      Text(downvotes.toString()),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}