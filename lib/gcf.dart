import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class GCF extends StatelessWidget {
  //const GCF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GCF',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GCF'),
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
  String t1 = '', t2 = '', output = '';
  int? n1 = 0, n2 = 0;
  Gcf gcf = Gcf();
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();

  void _incrementCounter() {
    setState(() {
      if (c1.text == '')
        _warning('num1 is missing');
      else if (c2.text == '')
        _warning('num2 is missing');
      else {
        output = gcf.gcffind(a: n1, b: n2);
      }
    });
  }

  void _reset() {
    setState(() {
      c1.text = '';
      c2.text = '';
      output = '';
    });
  }

  void _warning(a) {
    setState(() {
      output = a;
      _reset();
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
            Text(
              output,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160,
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Number 1'),
                    onChanged: (text) {
                      t1 = text;
                      n1 = int.tryParse(t1);
                    },
                    controller: c1,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 160,
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Number 2'),
                    onChanged: (text) {
                      t2 = text;
                      n2 = int.tryParse(t2);
                    },
                    controller: c2,
                    keyboardType: TextInputType.number,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RawMaterialButton(
                    onPressed: _incrementCounter,
                    child: Text(
                      'GCF',
                      style: TextStyle(fontSize: 22),
                    ),
                    fillColor: Colors.pink,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RawMaterialButton(
                    onPressed: _reset,
                    child: Text(
                      'Clear',
                      style: TextStyle(fontSize: 22),
                    ),
                    fillColor: Colors.grey,
                  ),
                ),
              ],
            )
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

class Gcf {
  int a = 0, b = 0, t = 0;
  String output = '';
  Gcf({this.a = 0, this.b = 0});
  String gcffind({a, b}) {
    t = 0;
    while (b != 0) {
      t = a;
      a = b;
      b = t % b;
    }
    return a.toString();
  }
}
