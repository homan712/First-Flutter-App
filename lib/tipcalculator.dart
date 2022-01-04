import 'dart:developer';

import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class TipCalculator extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'TipCalculator-homan'),
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
  //int _counter = 0;
  String t1 = '', t2 = '', result = '';
  double n2 = 0.0;
  TipCalculate tipCalculate = TipCalculate();

  void _incrementCounter() {
    setState(() {
      if (t2 == '')
        result = 'Enter the bill amount please';
      else
        result = tipCalculate.tip(bill: n2, service: t1);
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(result, style: TextStyle(fontSize: 22)),
            Container(
              margin: const EdgeInsets.all(40.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter how good the service was',
                    labelText: 'g-good, a-allright, n-notbad, p-poor'),
                keyboardType: TextInputType.text,
                onChanged: (text) {
                  t1 = text;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the bill amount please'),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  t2 = text;
                  n2 = double.parse(t2);
                },
              ),
            ),
            OutlinedButton(
                onPressed: _incrementCounter,
                child: const Text('Calculate Tip'))
          ],
        ),
      ),
    );
  }
}

class TipCalculate {
  double bill = 0.0, tiprate = 0.0;
  String service = '', result = '';

  TipCalculate({this.bill = 0.0, this.service = ''});

  String tip({bill, service}) {
    if (service.toLowerCase() == 'g')
      tiprate = 0.25;
    else if (service.toLowerCase() == 'a')
      tiprate = 0.15;
    else if (service.toLowerCase() == 'n')
      tiprate = 0.1;
    else if (service.toLowerCase() == 'p')
      tiprate = 0;
    else
      return 'Unacceptable input';

    return 'Tip is ${tiprate * bill}';
  }
}
