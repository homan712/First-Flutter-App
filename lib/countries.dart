import 'package:flutter/material.dart';

class Usa extends StatelessWidget {
  const Usa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('USA'),
      ),
      body: Column(
        children: const [
          Text(
              'The United States (U.S. or US), officially the United States of America (U.S.A. or USA) and commonly known as America, is a country primarily located in North America.'),
          Text(
            'homan',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class Canada extends StatelessWidget {
  const Canada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canada'),
      ),
      body: Column(
        children: const [
          Text(
              'Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic to the Pacific and northward into the Arctic Ocean, covering 9.98 million square kilometres (3.85 million square miles), making it the world second-largest country by total area. Its southern and western border with the United States, stretching 8,891 kilometres (5,525 mi), is the world longest bi-national land border.'),
          Text(
            'homan',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
