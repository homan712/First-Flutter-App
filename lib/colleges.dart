import 'package:flutter/material.dart';
import 'package:ios_merge_apps/states.dart';
import 'cities.dart';

class WSU extends College {
  WSU()
      : super(
            collegename: 'Wichita State University',
            collegelogo: 'lib/images/wsulogo.png',
            collegetext:
                'Computer Science cost\$3421, located in Wichita, Kansas',
            citytext: 'Wichita',
            citywidget: '/Wichita');
}

class CUNY extends College {
  CUNY()
      : super(
            collegename: 'City University of New York',
            collegelogo: 'lib/images/cuny.png',
            collegetext:
                'Computer Science cost\$6930, located in New York City, New York City',
            citytext: 'NYC',
            citywidget: '/NewYorkCity');
}

class ISU extends College {
  ISU()
      : super(
            collegename: 'Illinois State University',
            collegelogo: 'lib/images/isu.png',
            collegetext:
                'Computer Science cost\$13115, located in Bloomington, Illinois',
            citytext: 'Normal',
            citywidget: '/Bloomington');
}

class OU extends College {
  OU()
      : super(
            collegename: 'The University of Oklahoma',
            collegelogo: 'lib/images/ou.png',
            collegetext:
                'Computer Science cost\$11763, located in Norman, Oklahoma',
            citytext: 'Norman',
            citywidget: '/Norman');
}

class NYU extends College {
  NYU()
      : super(
            collegename: 'New York University',
            collegelogo: 'lib/images/nyu.png',
            collegetext:
                'Computer Science cost\$53,308, located in New York City, New York',
            citytext: 'NYC',
            citywidget: '/NewYorkCity');
}

class DUKE extends College {
  DUKE()
      : super(
            collegename: 'Duke University',
            collegelogo: 'lib/images/duke.png',
            collegetext:
                'Computer Science cost\$58,031, located in Durham, North Carolina',
            citytext: 'Durham',
            citywidget: '/Durham');
}

class OSU extends College {
  OSU()
      : super(
            collegename: 'Ohio State University',
            collegelogo: 'lib/images/osu.png',
            collegetext:
                'Computer Science cost\$11,084, located in Columbus, Ohio',
            citytext: 'Columbus',
            citywidget: '/Columbus');
}

class OPSU extends College {
  OPSU()
      : super(
            collegename: 'Oklahoma Panhandle State University',
            collegelogo: 'lib/images/opsu.png',
            collegetext:
                'Computer Science cost\$7264, located in Goodwell, Oklahoma',
            citytext: 'Goodwell',
            citywidget: '/Goodwell');
}

class UTULSA extends College {
  UTULSA()
      : super(
            collegename: 'The University of Tulsa',
            collegelogo: 'lib/images/utulsa.png',
            collegetext:
                'Computer Science cost\$42723, located in Tulsa, Oklahoma',
            citytext: 'Tulsa',
            citywidget: '/Tulsa');
}

class KU extends College {
  KU()
      : super(
            collegename: 'University of Kansas',
            collegelogo: 'lib/images/ku.png',
            collegetext:
                'Computer Science cost\$11,166, located in Lawrence, Kansas',
            citytext: 'Lawrence',
            citywidget: '/Lawrence');
}

class RICE extends College {
  RICE()
      : super(
            collegename: 'Rice University',
            collegelogo: 'lib/images/rice.png',
            collegetext:
                'Computer Science cost\$49,112, located in Houston, Texas',
            citytext: 'Houston',
            citywidget: '/Houston');
}

class BC extends College {
  BC()
      : super(
            collegename: 'University of Biritsh Columba',
            collegelogo: 'lib/images/ubc.png',
            collegetext:
                'Computer Science cost\$5399, located in Vancouver, British Columbia',
            citytext: 'Vancouver',
            citywidget: '/Vancouver');
}

class MIT extends College {
  MIT()
      : super(
            collegename: 'Massachusets Institue of Technology',
            collegelogo: 'lib/images/mit.png',
            collegetext:
                'Computer Science cost\$53,790, located in Cambridge, Massachusetts',
            citytext: 'Cambridge',
            citywidget: '/Cambridge');
}

class Brown extends College {
  Brown()
      : super(
            collegename: 'Brown University',
            collegelogo: 'lib/images/brown.png',
            collegetext:
                'Computer Science cost\$58,404, located in Providence, Rhode Island',
            citytext: 'Providence',
            citywidget: '/Providence');
}

class SUNY extends College {
  SUNY() : super(citywidget: '/NewYorkState');
}

class College extends StatelessWidget {
  String collegename;
  String collegetext;
  String citytext;
  String collegelogo;
  String citywidget;

  College(
      {this.collegename = 'State University of New York',
      this.collegetext = 'Computer Sceience cost \$8923',
      this.citytext = 'New York State',
      this.collegelogo = 'lib/images/suny.png',
      this.citywidget = 'hey'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collegename),
      ),
      body: Column(
        children: [
          Image.asset(collegelogo),
          Text(collegetext),
          const Text(
            'Homan',
            style: TextStyle(color: Colors.grey),
          ),
          OutlinedButton(
              onPressed: () {
                //Navigator.push(context,
                //MaterialPageRoute(builder: (context) => citywidget));
                Navigator.pushNamed(context, citywidget);
              },
              child: Text(citytext)),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'))
        ],
      ),
    );
  }
}
