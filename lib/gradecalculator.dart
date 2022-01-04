import 'package:flutter/material.dart';

//void main() {
//runApp(const MyApp());
//}

class GradeCalculator extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator-homan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Grade Calculator-homan'),
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
  String t1 = '', t2 = '', result = 'Grade';
  double numbergrade = 0.0;
  GradeCalculate calc = GradeCalculate();
  void _incrementCounter() {
    setState(() {
      result = calc.getLetterGrade(name: t1, grade: numbergrade);
    });
    //_counter++
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
            result,
            style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                  labelText: "Enter your name please",
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
              onChanged: (text) {
                t1 = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                  labelText: "Enter your grade please",
                  border: const OutlineInputBorder()),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                t2 = text;
                numbergrade = double.parse(t2);
              },
            ),
          ),
          OutlinedButton(
              onPressed: _incrementCounter,
              child: const Text('Convert to letter grade')),
        ],
      )),
    );
  }
}

class GradeCalculate {
  double grade = 0.0;
  String _letter = '', name = '';
  GradeCalculate({this.name = '', this.grade = 0.0});
  String getLetterGrade({name, grade}) {
    if (grade < 100.0 && grade >= 90.0) {
      _letter = 'A';
    } else if (grade < 90.0 && grade >= 80.0) {
      _letter = 'B';
    } else if (grade < 80.0 && grade >= 70.0) {
      _letter = 'C';
    } else if (grade < 70.0 && grade >= 60.0) {
      _letter = 'D';
    } else if (grade < 60.0 && grade >= 0.0) {
      _letter = 'F';
    } else if (grade < 0.0) {
      return 'grade must be greater than 0';
    } else if (grade > 100.0) {
      return 'grade must be less than 100';
    } else {
      _letter = 'Invalid grade';
    }
    return _letter;
  }
}
