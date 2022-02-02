import 'package:flutter/material.dart';


class SoccerApi{

 late final String apiUrl= "https://v3.football.api-sport.io/fixtures?live=all";
 static const api_key = "3a14973b51cf43997a005e138bee5edd";



static const headers = {
 'x-rapidapi-host': "v3.football.api-sports.io",
 'x-rapidapi-key': api_key
};

}