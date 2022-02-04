import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportapp_test/services/data_Source.dart';
import 'package:sportapp_test/widgets/page_body.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: Text("Sport App"),
      ),
      body: FutureBuilder(
        future: SoccerApi().getAllMatches(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return pageBody(snapshot.data as List<SoccerApi>);
          }else {
            return Center(child: CircularProgressIndicator(),
            );
          }
        }

      ),
    );
  }
}
