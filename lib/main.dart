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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder:(context) =>FutureWidgetPage(title: "Future Widget",),
        )),
        child: Text("Demonstrate FutureWidget"),
      ),
    );
  }
}



class FutureWidgetPage extends StatefulWidget {
  const FutureWidgetPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FutureWidgetPage> createState() => _FutureWidgetPageState();
}

class _FutureWidgetPageState extends State<FutureWidgetPage> {

  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "Om guru dev.";
      // throw Exception("Custom Error");
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) {
          print("snapshot.connectionState:${snapshot.connectionState}");
          if(snapshot.connectionState == ConnectionState.done){

            if(snapshot.hasError){
                    return Center(
                      child: Text('${snapshot.error} occurred',style: TextStyle(fontSize: 18),),
                    );
            }else if(snapshot.hasData){
              final data = snapshot.data as String;
              return Center(
                child: Text(
                  '$data'
                ),
              );
            }

          }
          // Displaying LoadingSpinner to indicate waiting state
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        future: getData(),
      ),
      );

  }
}

