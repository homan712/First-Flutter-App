import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}
*/

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ios calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
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
  double n1 = 0, n2 = 0;
  String t1 = '', t2 = '', output = '';
  Calculate calc = Calculate();

  void _incrementCounter() {
    setState(() {
      if (t1 == '') {
        output = 'Missing value in the first number';
      } else if (t2 == '') {
        output = 'Missing value in the second number';
      } else {
        output = calc.sum(n1, n2) +
            '.' +
            calc.multiply(n1, n2) +
            '.' +
            calc.divide(n1, n2) +
            '.' +
            calc.subtract(n1, n2) +
            '.' +
            calc.average(n1, n2);
      }
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
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter first number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    t1 = text;
                    n1 = double.parse(t1);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter second number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    t2 = text;
                    n2 = double.parse(t2);
                  }),
            ),
            Text(output, style: const TextStyle(fontSize: 20)),
            OutlinedButton(
                onPressed: _incrementCounter, child: const Text('Calculate'))
          ],
        ),
      ),
    );
  }
}

class Calculate {
  double num1, num2, result = 0;
  Calculate({this.num1 = 0, this.num2 = 0});

  String sum(num1, num2) {
    result = num1 + num2;
    return 'The summation is $result';
  }

  String divide(num1, num2) {
    if (num2 == 0) return 'Cannot divide by zero';
    result = (num1 / num2).roundToDouble();
    return 'The division is $result';
  }

  String average(num1, num2) {
    result = (num1 + num2) / 2;
    return 'The average is $result';
  }

  String subtract(num1, num2) {
    result = num1 - num2;
    return 'The subtract is $result';
  }

  String multiply(num1, num2) {
    result = num1 * num2;
    return 'The multiply is $result';
  }
}
