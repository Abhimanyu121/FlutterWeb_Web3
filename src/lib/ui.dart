import 'package:flutter/material.dart';
import 'pollCard.dart';
import 'pollModel.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'web3jsWrapper.dart';

class VoteApp extends StatefulWidget{
  VoteAppUi createState() => new VoteAppUi();
}
class VoteAppUi extends State<VoteApp> {
  List polls= new  List<PollModel>();
  TextEditingController pollStmt;
  @override
  void initState(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Add new Poll",
              ),
              controller: pollStmt,
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Web3jsWrapper wrappper = new Web3jsWrapper();
              wrappper.getCount();
            } ,
            child: Text("Add Poll"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
            child: polls.length==0?Center(
            child: SpinKitChasingDots(size: 50, color: Colors.blue,),
          ): ListView.builder(
              itemCount: polls.length,
              itemBuilder: (context, index){
                var i = index-1;
                return PollCard(i, polls[i].statement, polls[i].upvotes, polls[i].downvotes);
              },
            ),
          ),
          Center(
            child: SpinKitChasingDots(size: 50,color: Colors.blue,),
          )
        ],
      ),
    );
  }

}