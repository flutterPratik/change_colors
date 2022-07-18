import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Colors',
      home: Scaffold(
        appBar: AppBar(title: Text('Change Colors'),),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var RandomColors=[
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.purple,
    Colors.deepOrange,
    Colors.cyanAccent,
  ];

 var DefaultColor= Colors.white10;

 setColors(){
   var random=Random().nextInt(RandomColors.length);
      setState((){

        DefaultColor = RandomColors[random];

      });
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: DefaultColor,
      child: Center(
        child: ElevatedButton(onPressed: setColors,
            child: Text('Change Colors!'),
          style: ElevatedButton.styleFrom(
            primary: DefaultColor,
            side: BorderSide(color: Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}



