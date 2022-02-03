import 'package:flutter/material.dart';


Widget? goatStat(int? homeGoal, int? awayGoal, int? expandedTime){
  return Expanded(child: Column(
    children: [
      Text("${expandedTime}", style:TextStyle(fontSize: 25.0),),
      Expanded(child: Center(
        child: Text("${homeGoal}-${awayGoal}", textAlign: TextAlign.center, style: TextStyle(fontSize:30.0),),
      ))
    ],
  ));
}