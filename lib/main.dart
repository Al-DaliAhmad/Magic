import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.lightBlue,
        ),
        body:Magicpage()
      ),
    );
  }
}
class Magicpage extends StatefulWidget {

  @override
  State<Magicpage> createState() => _MagicpageState();
}

class _MagicpageState extends State<Magicpage> {
  int stnumberball=1;
  void numberball(){
    setState(() {
      stnumberball = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                  onPressed: (){
                    numberball();
                  },
                    child: Image.asset('images/ball$stnumberball.png')
                )
            )
          )
        ],
      ),
    );
  }
}

