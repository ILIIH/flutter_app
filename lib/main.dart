import 'package:flutter/material.dart';
import 'package:ua_ref_flutter/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: mainColor,
        child: Column(
          children:   [
                const Padding(
                padding: EdgeInsets.only(left:20, bottom: 0, right: 20, top:60), //apply padding to some sides only
                  child:Text("Wishes of my love baby",
                      style: TextStyle(fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 20)
                      ),
                    ),
                Padding(
                  padding: EdgeInsets.only(left:20, bottom: 0, right: 20, top:20), //apply padding to some sides only
                  child:TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter type of wishes',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
               ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom: 0, right: 0, top:38), //apply padding to some sides only
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  height: MediaQuery. of(context). size. height - 200,
                  width: double.infinity,
                          )
              ),
          ],
        ),
      )
    );
  }
}


