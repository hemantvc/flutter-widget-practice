import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Wrap(children: [
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Text("O",style: TextStyle(color: Colors.white),),),
          Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
              child:Text(" m",style: TextStyle(color:Colors.white),),),
          Container(
              width: 100,
              height: 100,
              color: Colors.pink,
              child:Text(" *Om", style: TextStyle(color:Colors.white),)),
          Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child:Text(" *Om", style: TextStyle(color:Colors.white),)),
          Container(
              width: 100,
              height: 100,
              color: Colors.lime,
              child:Text(" *Om", style: TextStyle(color:Colors.white),))

        ]),

      ),
    );
  }
}
