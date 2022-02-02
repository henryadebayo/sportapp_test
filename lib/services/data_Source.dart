import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sportapp_test/models/soccer_model.dart';


class SoccerApi{

 late final String apiUrl= "https://v3.football.api-sport.io/fixtures?live=all";
 static const api_key = "3a14973b51cf43997a005e138bee5edd";



static const headers = {
 'x-rapidapi-host': "v3.football.api-sports.io",
 'x-rapidapi-key': api_key
};


Future<List<SoccerModel>> getAllMatches() async{
 Response response = await get(Uri.parse(apiUrl), headers: headers);
  var body;
   if(response.statusCode == 200){
    body = jsonDecode(response.body);
    List<dynamic> matchList = body['response'];
    print(body);
   }
   return body;
}
}