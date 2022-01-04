import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}
*/

class Test1Review extends StatelessWidget {
  const Test1Review({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'homan Test 1 Review'),
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
              const SizedBox(
                width: 200,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text(
                  'homan',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 150),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.red),
                child: const Text(
                  'homan ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.pink),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.lime),
                child: const Text(
                  'homan ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 0,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 0,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 150,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 200,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.purple),
                child: const Text(
                  'homan  ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
