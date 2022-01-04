import 'package:ios_merge_apps/colleges.dart';
import 'package:flutter/material.dart';

import 'cities.dart';
import 'countries.dart';
import 'states.dart';
import 'colleges.dart';

/*void main() {
  runApp(const MyApp());
}
*/

class IosColleges extends StatelessWidget {
  const IosColleges({Key? key}) : super(key: key);

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
        '/': (context) => const MyHomePage(title: 'Colleges'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'WSU',
                  college: '/WSU',
                  bgcolor: const Color(0xffA60F2D),
                ),
                CollegeButtons(
                  collegename: 'CUNY',
                  college: '/CUNY',
                  bgcolor: const Color(0xff002145),
                  forecolor: Colors.white,
                ),
                CollegeButtons(
                  collegename: 'ISU',
                  college: '/ISU',
                  bgcolor: const Color(0xffC8102E),
                  forecolor: const Color(0xffF1BE48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'OU',
                  college: '/OU',
                  bgcolor: const Color(0xff841617),
                ),
                CollegeButtons(
                  collegename: 'NYU',
                  college: '/NYU',
                  bgcolor: Colors.purple,
                ),
                CollegeButtons(
                  collegename: 'DUKE',
                  college: '/DUKE',
                  bgcolor: const Color(0xff012169),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'OSU',
                  college: '/OSU',
                  bgcolor: Colors.red,
                ),
                CollegeButtons(
                  collegename: 'OPSU',
                  college: '/OPSU',
                  bgcolor: Colors.red,
                ),
                CollegeButtons(
                  collegename: 'UTULSA',
                  college: '/UTULSA',
                  bgcolor: const Color(0xff002145),
                  forecolor: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                    collegename: 'KU',
                    college: '/KU',
                    bgcolor: const Color(0xff0051BA),
                    forecolor: const Color(0xffE8000D)),
                CollegeButtons(
                    collegename: 'RICE',
                    college: '/RICE',
                    bgcolor: const Color(0xff00205B),
                    forecolor: const Color(0xffC1C6C8)),
                CollegeButtons(
                    collegename: 'BC',
                    college: '/BC',
                    bgcolor: const Color(0xff002145),
                    forecolor: Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(
                  collegename: 'MIT',
                  college: '/MIT',
                  bgcolor: Colors.red,
                  forecolor: Colors.white,
                ),
                CollegeButtons(
                  collegename: 'BROWN',
                  college: '/Brown',
                  bgcolor: Colors.brown,
                  forecolor: Colors.white,
                ),
                CollegeButtons(
                  collegename: 'SUNY',
                  college: '/SUNY',
                  bgcolor: const Color(0xff009EE0),
                  forecolor: Colors.white,
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
