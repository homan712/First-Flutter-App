import 'package:ios_merge_apps/colleges.dart';
import 'package:flutter/material.dart';
import 'package:ios_merge_apps/test1Review1b.dart';

import 'cities.dart';
import 'countries.dart';
import 'states.dart';
import 'colleges.dart';
import 'ioscollege.dart';
import 'businesscard.dart';
import 'test1review.dart';
import 'test1Review1b.dart';
import 'calculator.dart';
import 'tipcalculator.dart';
import 'gradecalculator.dart';
import 'temperatureconverter.dart';
import 'guessgame.dart';
import 'picturegallery.dart';
import 'gcf.dart';
import 'finalreview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'classwork4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'ios Colleges Tab-bar'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'ios Colleges Tab-bar'),
        '/WSU': (context) => WSU(),
        '/OU': (context) => OU(),
        '/OSU': (context) => OSU(),
        '/KU': (context) => KU(),
        '/MIT': (context) => MIT(),
        '/CUNY': (context) => CUNY(),
        '/NYU': (context) => NYU(),
        '/OPSU': (context) => OPSU(),
        '/RICE': (context) => RICE(),
        '/Brown': (context) => Brown(),
        '/ISU': (context) => ISU(),
        '/DUKE': (context) => DUKE(),
        '/UTULSA': (context) => UTULSA(),
        '/BC': (context) => BC(),
        '/SUNY': (context) => SUNY(),
        '/NYU': (context) => NYU(),
        '/Wichita': (context) => Wichita(),
        '/Norman': (context) => Norman(),
        '/Bloomington': (context) => Bloomington(),
        '/Lawrence': (context) => Lawrence(),
        '/Cambridge': (context) => Cambridge(),
        '/NewYorkCity': (context) => NewYorkCity(),
        '/Durham': (context) => Durham(),
        '/Columbus': (context) => Columbus(),
        '/Goodwell': (context) => Goodwell(),
        '/Tulsa': (context) => Tulsa(),
        '/Houston': (context) => Houston(),
        '/Vancouver': (context) => Vancouver(),
        '/Providence': (context) => Providence(),
        '/Kansas': (context) => Kansas(),
        '/Oklahoma': (context) => Oklahoma(),
        '/Massachsetts': (context) => Massachsetts(),
        '/NewYorkState': (context) => NewYorkState(),
        '/Texas': (context) => Texas(),
        '/RhodeIsland': (context) => RhodeIsland(),
        '/Ohio': (context) => Ohio(),
        '/NC': (context) => NC(),
        '/BCc': (context) => BCc(),
        '/Usa': (context) => Usa(),
        '/Canada': (context) => Canada(),
        '/IosColleges': (context) => IosColleges(),
        '/BusinessCard': (context) => BusinessCard(),
        '/Test1Review': (context) => Test1Review(),
        '/Test1Review1b': (context) => Test1Review1b(),
        '/Calculator': (context) => Calculator(),
        '/TipCalculator': (context) => TipCalculator(),
        '/GradeCalculator': (context) => GradeCalculator(),
        '/TemperatureConverter': (context) => TemperatureConverter(),
        '/guessGame': (context) => guessGame(),
        '/PictureGallery': (context) => PictureGallery(),
        '/GCF': (context) => GCF(),
        '/FinalReview': (context) => FinalReview(),
      },
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'Colleges',
                  college: '/IosColleges',
                  bgcolor: const Color(0xff841617),
                ),
                CollegeButtons(
                  collegename: 'BusinessCard',
                  college: '/BusinessCard',
                  bgcolor: const Color(0xff841617),
                ),
                CollegeButtons(
                  collegename: 'Test 1 Review',
                  college: '/Test1Review',
                  bgcolor: Colors.purple,
                ),
                CollegeButtons(
                  collegename: 'Test 1 Review 1b',
                  college: '/Test1Review1b',
                  bgcolor: const Color(0xff012169),
                ),
                CollegeButtons(
                  collegename: 'Calculator',
                  college: '/Calculator',
                  bgcolor: const Color(0xff012169),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'Tip Calculator',
                  college: '/TipCalculator',
                  bgcolor: const Color(0xff841617),
                ),
                CollegeButtons(
                  collegename: 'Grade Calculator',
                  college: '/GradeCalculator',
                  bgcolor: const Color(0xff841617),
                ),
                CollegeButtons(
                  collegename: 'Temperature Converter',
                  college: '/TemperatureConverter',
                  bgcolor: Colors.purple,
                ),
                CollegeButtons(
                  collegename: 'Guess Game',
                  college: '/guessGame',
                  bgcolor: const Color(0xff012169),
                ),
                CollegeButtons(
                  collegename: 'Picture Gallery',
                  college: '/PictureGallery',
                  bgcolor: const Color(0xff012169),
                ),
                CollegeButtons(
                  collegename: 'GCF',
                  college: '/GCF',
                  bgcolor: const Color(0xff012169),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CollegeButtons extends StatelessWidget {
  String collegename;
  String college;
  Color forecolor;
  Color bgcolor;

  CollegeButtons(
      {this.collegename = 'SUNY',
      this.college = 'pass college widget',
      this.bgcolor = Colors.black,
      this.forecolor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(bgcolor)),
      child: Text(
        collegename,
        style: TextStyle(color: forecolor),
      ),
      onPressed: () {
        Navigator.pushNamed(
            //context, MaterialPageRoute(builder: (context) => college));
            context,
            college);
      },
    );
  }
}
