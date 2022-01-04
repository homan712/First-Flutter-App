import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}
*/

class Test1Review1b extends StatelessWidget {
  const Test1Review1b({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exam1 Review 1b'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.orange),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.orange),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.yellow),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.red),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.red),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Text('Homan'),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text('Homan'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
