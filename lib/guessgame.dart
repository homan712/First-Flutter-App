import 'dart:math';

import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class guessGame extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess Game-homan',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Guess Game-homan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = '', t1 = '';
  int? n1 = 0;
  Guess guess = Guess();
  TextEditingController a = TextEditingController();

  void _incrementCounter() {
    setState(() {
      result = guess.seeIfGuessedRight(n1: n1);
    });
  }

  void _reset() {
    setState(() {
      guess.playAgain();
      result = '';
      a.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                result,
                style: TextStyle(fontSize: 26, color: Colors.deepPurple),
              ),
            ),
            Container(
              width: 200,
              child: TextField(
                controller: a,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 26, color: Colors.pinkAccent),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter 1-100',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder()),
                onChanged: (text) {
                  t1 = text;
                  n1 = int.tryParse(t1);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RawMaterialButton(
                    onPressed: _reset,
                    child: const Text(
                      'playAgain',
                      style: TextStyle(fontSize: 15),
                    ),
                    fillColor: Colors.grey),
                RawMaterialButton(
                    onPressed: _incrementCounter,
                    child: const Text(
                      'Guess it',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
                    ),
                    fillColor: Colors.lightGreen),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Guess {
  int n1 = 0, secret = Random().nextInt(100), count = 0;

  String output = '';
  Guess({this.n1 = 0});
  String seeIfGuessedRight({n1}) {
    count = count + 1;
    if (n1 > secret)
      output = 'Too high';
    else if (n1 < secret)
      output = 'Too low';
    else if (n1 == secret) output = 'Congrats took $count times ';
    return output;
  }

  void playAgain() {
    secret = Random().nextInt(100);
    count = 0;
  }
}
