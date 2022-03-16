import 'package:flutter/material.dart';

/**
 * Flutter wrap widget
 * https://medium.com/flutter-community/flutter-wrap-widget-e1ee0b005b16
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // state variable
  var _myDuration = Duration(seconds: 1);
  var _myValue = Color(0xFF00BB00);
  var _myNewValue = Color(0xFF0000FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Stack(
          children:[ AnimatedContainer(
            duration: _myDuration,
            color: _myValue,
            child: Container(),
          ),
          FlatButton(
            color: Colors.white,
            child: Text(("Click me"), style: TextStyle(color: Colors.red.shade800),),onPressed: (){
              setState(() {
                _myValue = _myNewValue;
              });
          },)
        ]),

      ),
    );
  }
}
