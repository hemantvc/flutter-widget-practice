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

    return Stack(
      children: [
        _topBar(),
        Opacity(
        opacity:0.0,
          child: _containtArea(),
        ),
        _bottomBar()
      ],
    );
  }


  _topBar(){
    return Container(
      child: Text("Welcome"),
    );
  }

  _containtArea(){
    return Container(
      child: Image.network(
          'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate
      ),
    );
  }
  _bottomBar(){
    return Container(
      child: Text("Thank you"),
    );
  }

}
