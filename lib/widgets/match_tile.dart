import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportapp_test/models/soccer_model.dart';
import 'package:sportapp_test/services/data_Source.dart';

Widget? matchTile(SoccerModel match){
  return Container(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Text(
          match.home?.name as String,textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize:16.0 ),
        ),
        ),
        Image.network(match.home?.logoUrl as String, width: 36.0,),
        Expanded(child: Text("${match.goal?.home} - ${match.goal?.away}" , textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16.0),),
        ),
        Image.network(match.away?.logoUrl as String, width: 36.0,),
        Expanded(child: Text(
          match.away?.name as String,textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize:16.0 ),
        ),
        ),
      ],),
  );
}