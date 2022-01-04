import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class TemperatureConverter extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
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
      home: const MyHomePage(title: 'Temperature Converter'),
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
  String t1 = '', result = '';
  double n1 = 0.0;
  Color clr = Colors.green;
  TemperatureConvert con = TemperatureConvert();

  void _incrementCounter() {
    setState(() {
      if (n1 > 1000)
        result = 'Please Enter colder than 1000';
      else if (n1 < -1000)
        result = 'please enter warmer than -1000';
      else {
        if (n1 >= 30)
          clr = Colors.red;
        else if (n1 >= 18 && n1 < 30)
          clr = Colors.orange;
        else if (n1 < 18 && n1 > 0.0)
          clr = Colors.green;
        else if (n1 < 0.0 && n1 > -20)
          clr = Colors.lightBlue;
        else if (n1 < -20.0) clr = Colors.blue;

        result = con.convert(temp: n1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
        children: [
          Text(
            result,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                backgroundColor: clr),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a temperature in Celcius please'),
              onChanged: (text) {
                t1 = text;
                n1 = double.parse(t1);
              },
            ),
          ),
          OutlinedButton(
              onPressed: _incrementCounter,
              child: const Text(
                'Convert to Kelvin',
                style: TextStyle(fontSize: 20),
              )),
        ],
      )),
    );
  }
}

class TemperatureConvert {
  double temp = 0.0;
  String msg = '';

  TemperatureConvert({this.temp = 0.0});
  String convert({temp}) {
    if (temp >= 30.0) {
      msg = 'Hot';
    } else if (temp < 30.0 && temp >= 18.0) {
      msg = 'Warm';
    } else if (temp >= 0.0 && temp < 18.0) {
      msg = 'Cold';
    } else if (temp >= 0.0 && temp >= -18.0) {
      msg = 'Very Cold';
    } else if (temp < 28.0) {
      msg = 'Extreme Cold';
    }
    return '$msg it is ${(temp + 273.15).round()}Kelvin';
  }
}
