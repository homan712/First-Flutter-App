import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class FinalReview extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final-Review-homan',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Final-Review-homan'),
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
  int? n1 = 0;
  String t1 = '', output = 'it is raining';
  ConvertTemp ct = ConvertTemp();

  void _incrementCounter() {
    setState(() {});
    output = ct.convert(k: n1);
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
            Text(
              output,
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter Kelvin Temp', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                t1 = text;
                n1 = (int.tryParse(t1));
              },
            ),
            RawMaterialButton(
              onPressed: _incrementCounter,
              child: Text('convert to Kelvin'),
              fillColor: Colors.green,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ConvertTemp {
  double k = 0.0;
  int f = 0;
  String output = '';
  ConvertTemp({this.k = 0.0, this.f = 0});
  String convert({k}) {
    f = ((k - 273.15 * 9 / 5) + 32).round();
    if (f < 2800)
      output = 'iron is solid';
    else if (f > 2000 && f < 5814)
      output = 'iron is melting';
    else if (f > 5814) output = 'iron is boiling';
    output = output + 'Fahrenheir = $f degrees';
    return output;
  }
}
