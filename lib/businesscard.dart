import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}
*/

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BusinessCard'),
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
      body: Container(
        margin: EdgeInsets.all(15),
        width: 350,
        height: 120,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 4)),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.account_circle_rounded,
                  size: 60,
                ),
                Column(
                  children: const [
                    Text(
                      'homan',
                      style: TextStyle(fontSize: 22.1),
                    ),
                    Text('App Developer')
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [Text('123'), Text('123-123-1234')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.accessibility),
                Icon(Icons.timer),
                Icon(Icons.android_outlined),
                Icon(Icons.phone_iphone),
              ],
            )
          ],
        ),
      ),
    );
  }
}
