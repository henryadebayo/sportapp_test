import 'package:flutter/material.dart';
import 'package:sportapp_test/services/data_Source.dart';



Widget pageBody(List<SoccerApi> allMatches){
 return Column(children: [
  Expanded(flex: 2,
      child: Container(),
  ),
  Expanded(
   flex: 5,
   child: Container(
   width: double.infinity,
   decoration: BoxDecoration(
    color: Color(0xff4373D9),
    borderRadius: BorderRadius.only(
     topLeft: Radius.circular(40.0),
     topRight: Radius.circular(40.0),
    ),
   ),
  ),
  ),

],);

}