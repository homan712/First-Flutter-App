import 'dart:io';
import 'dart:math';
import 'main.dart';

import 'package:flutter/material.dart';
import 'package:ios_merge_apps/states.dart';

class Wichita extends StatelessWidget {
  final plains = LandMarks(
      title: 'The Keeper of the Plains',
      description:
          'The Keeper of the Plains is a 13.4 metres (44 ft) Cor-Ten steel sculpture by Kiowa-Comanche artist Blackbear Bosin. It stands at the confluence of the Arkansas and Little Arkansas rivers in Wichita, Kansas adjacent to the Mid-America All-Indian Center. Surrounding the base of the statue are multiple displays which describe the local tribes that used to inhabit the area, as well as several fire pits which sometimes light up to illuminate the statue at night',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/5/5e/KeeperBridge_24.jpg');

  final cowtown = LandMarks(
      title: 'Old Cowtown Museum',
      description:
          'Old Cowtown Museum is an accredited history museum located in Wichita, Kansas, United States. It is located next to the Arkansas River in central Wichita',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/d/dc/Darius_Sales_Munger_House_in_Cowtown_Wichita%2C_KS.JPG');

  final verteran = LandMarks(
      title: 'Veteran Memorial Park',
      description:
          'The Park as it is now comprised was formed by an action taken by the City Council on 21 July 2009.  On that date the Veterans Memorial Park of Wichita Inc. was given the responsibility of Managing the Park in accordance with the Long Range Plan agreed to by the Board of VMPWI and the City',
      image:
          'https://wichitaveteransmemorialpark.com/wp-content/uploads/2018/10/Veterans-Memorial-park-sign-1-768x453.jpg');
  final List<LandMarks> wichitalandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 37.68,
      destinationy: -97.33,
    );
    wichitalandmarks.add(plains);
    wichitalandmarks.add(cowtown);
    wichitalandmarks.add(verteran);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wichita,KS'),
      ),
      body: Column(
        children: [
          const Text(
              'Wichita (/ˈwɪtʃɪtɔː/ WITCH-i-taw)[8] is the largest city in the U.S. state of Kansas and the county seat of Sedgwick County.'),
          const Text(
            'Homan',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: wichitalandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(wichitalandmarks[index].image),
                ),
                title: Text(wichitalandmarks[index].title),
                subtitle: Text(wichitalandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Kansas()));
              },
              child: const Text('State of Kansas')),
          Text(display),
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

class Bloomington extends StatelessWidget {
  final histroicsit = LandMarks(
      title: ' David Davis Mansion State Historical Sites',
      description:
          'The David Davis Mansion, also known as Clover Lawn, is a Victorian home in Bloomington, Illinois that was the residence of David Davis, Supreme Court justice (1862–1877) and Senator from Illinois.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/6/66/Bloomington_Il_David_Davis_Mansion3.JPG');

  final memorialcemetery = LandMarks(
      title: ' Evergreen Memorial Cemetery',
      description:
          'The Evergreen Memorial Cemetery is a historic cemetery in Bloomington, Illinois, United States. It is located in the town of Bloomington, about 10 miles (16 km) north of downtown Bloomington.',
      image:
          'https://images.findagrave.com/photos/2007/72/CEM46887276_117389681831.jpg');

  final motorsarean = LandMarks(
      title: ' Grossinger Motors Area',
      description:
          'Grossinger Motors Arena[7] (formerly known as U.S. Cellular Coliseum and simply the Coliseum[7]) is an arena in downtown Bloomington, Illinois. It is on the southwest corner of Madison Street (US-51) and Front Street',
      image:
          'https://upload.wikimedia.org/wikipedia/en/0/02/Grossinger_Motors_Arena.PNG');

  final List<LandMarks> bloomingtonlandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 40.47,
      destinationy: -88.99,
    );
    bloomingtonlandmarks.add(histroicsit);
    bloomingtonlandmarks.add(memorialcemetery);
    bloomingtonlandmarks.add(motorsarean);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal'),
      ),
      body: Column(
        children: [
          const Text(
              'Bloomington–Normal, officially known as the Bloomington, Illinois Metropolitan Statistical Area, is a metropolitan area in Central Illinois anchored by the twin municipalities of Bloomington and Normal. '),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: bloomingtonlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(bloomingtonlandmarks[index].image),
                ),
                title: Text(bloomingtonlandmarks[index].title),
                subtitle: Text(bloomingtonlandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Kansas()));
              },
              child: const Text('State of Kansas')),
          Text(display),
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

class Norman extends StatelessWidget {
  //const Norman({Key? key}) : super(key: key);
  final weatercenter = LandMarks(
      title: 'National Weather Center',
      description:
          'The National Weather Center (NWC), on the campus of the University of Oklahoma, is a confederation of federal, state, and academic organizations that work together to better understand events that take place in Earth atmosphere over a wide range of time and space scales',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/d/d7/National_Weather_Center_6-20-2006_3-48-27_PM.jpg');
  final memorialstadium = LandMarks(
      title: 'Oklahoma Memorial Stadium',
      description:
          'Memorial Stadium is a multi-purpose stadium located in downtown Norman, Oklahoma. It is the largest stadium in the United States, and the largest in the United States to have a roof over the entire city.',
      image:
          'https://www.collegegridirons.com/wp-content/uploads/2017/03/memok17951-768x512.jpg');
  final campuscorner = LandMarks(
      title: 'Historic Campus Corner District',
      description:
          'Campus Corner is a college-oriented commercial district in Norman, Oklahoma located directly north of the University of Oklahoma campus.[2] The area is bounded by White Street, University Boulevard, Boyd Street, and Asp Avenue.[3] The district is home to four blocks of unique retail shopping and mixed-use development, including restaurants, bars, clothing stores, OU memorabilia, personal care, and other businesses and professional organizations.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/f/f7/CampusCornerSign.JPG');

  final List<LandMarks> normanlandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 34.45,
      destinationy: -93.68,
    );
    normanlandmarks.add(weatercenter);
    normanlandmarks.add(memorialstadium);
    normanlandmarks.add(campuscorner);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Norman'),
      ),
      body: Column(
        children: [
          const Text(
              'Norman (/ˈnɔːrmən/) is a city in the U.S. state of Oklahoma 20 miles (32 km) south of downtown Oklahoma City. The county seat of Cleveland County and part of the Oklahoma City metropolitan area, its population was 110,925 at the 2010 census'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: normanlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(normanlandmarks[index].image),
                ),
                title: Text(normanlandmarks[index].title),
                subtitle: Text(normanlandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Oklahoma()));
              },
              child: const Text('State of Oklahoma')),
          Text(display),
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

class NewYorkCity extends StatelessWidget {
  //const NewYorkCity({Key? key}) : super(key: key);
  final capitol = LandMarks(
      title: 'State of Campitol',
      description:
          'The New York State Capitol, the seat of the New York State government, is located in Albany, the capital city of the U.S. state of New York. The capitol building is part of the Empire State Plaza complex on State Street in Capitol Park. Housing the New York State Legislature, the building was completed in 1899 at a cost of US 25 million (equivalent to 778 million in 2020), making it the most expensive government building of its time.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/NYSCapitolPanorama.jpg/1920px-NYSCapitolPanorama.jpg');
  final museum = LandMarks(
      title: 'Museum of the City of New York',
      description:
          'The Museum of the City of New York (Museum of the City) is a museum located in the New York City borough of Manhattan. It is the oldest museum in the United States, and the largest in the world. The museum is located on the Upper West Side of Manhattan, between West 33rd Street and West 34th Street. The museum is the oldest continuously operating museum in the United States, and the largest in the world. The museum is the oldest continuously operating museum in the United States, and the largest in the world.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Museum_of_the_City_of_New_York_1220_Fifth_Avenue_from_west.jpg/1920px-Museum_of_the_City_of_New_York_1220_Fifth_Avenue_from_west.jpg');
  final statue = LandMarks(
      title: 'Statue of Liberty',
      description:
          'The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The statue was created in 1886 by French sculptor Frédéric Auguste Bartholdi and is the centerpiece of the project titled the Manhattan Project. The statue is located on Liberty Island in New York Harbor, at the eastern end of the park. The statue is one of the most recognisable landmarks in the world, and is often referred to as the "Mother of the Statue of Liberty"',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/d/d3/Statue_of_Liberty%2C_NY.jpg');

  final List<LandMarks> nyclandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 42.65,
      destinationy: -73.75,
    );
    nyclandmarks.add(capitol);
    nyclandmarks.add(museum);
    nyclandmarks.add(statue);

    return Scaffold(
      appBar: AppBar(
        title: const Text('New York City'),
      ),
      body: Column(
        children: [
          const Text(
              'New York, often called New York City to distinguish it from New York State, or NYC for short, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2),[2] New York City is also the most densely populated major city in the United States.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: nyclandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(nyclandmarks[index].image),
                ),
                title: Text(nyclandmarks[index].title),
                subtitle: Text(nyclandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewYorkState()));
              },
              child: const Text('State of New York')),
          Text(display),
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

class Durham extends StatelessWidget {
  final athleticpark = LandMarks(
      title: 'Durham Bulls Athletic Park',
      description:
          ' Durham Bulls Athletic Park (DBAP, pronounced "d-bap") is a 10,000-seat ballpark in Durham, North Carolina that is home to the Durham Bulls, the Triple-A affiliate of the Tampa Bay Rays of Major League Baseball',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/c/c9/Durham_Bulls_Athletic_Park_Durham.JPG');

  final stadium = LandMarks(
      title: 'Cameron Indoor Stadium',
      description:
          'Cameron Indoor Stadium is an indoor arena located on the campus of Duke University in Durham, North Carolina. The 9,314-seat facility is the primary indoor athletic venue for the Duke Blue Devils and serves as the home court for Duke men and women basketball and women volleyball.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/9/92/Cameron_indoor.jpg');

  final tobacco = LandMarks(
      title: 'American Tobacco Historic District',
      description:
          'The American Tobacco Historic District is a historic tobacco factory complex and national historic district located in Durham, Durham County, North Carolina. The district encompasses 14 contributing buildings and three contributing structures built by the American Tobacco Company and its predecessors and successors from 1874 to the 1950s.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/3/3c/American_Tobacco_Campus.JPG');

  final List<LandMarks> durhamlandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 35.99,
      destinationy: -78.89,
    );

    durhamlandmarks.add(athleticpark);
    durhamlandmarks.add(stadium);
    durhamlandmarks.add(tobacco);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Durham'),
      ),
      body: Column(
        children: [
          const Text(
              'Durham (/ˈdʌrəm/ DURR-əm), also known as the "Bull City",[7] is a city in and the county seat of Durham County[8] in the U.S. state of North Carolina. Small portions of the city limits extend into Orange County and Wake County.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: durhamlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(durhamlandmarks[index].image),
                ),
                title: Text(durhamlandmarks[index].title),
                subtitle: Text(durhamlandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NC()));
              },
              child: const Text('State of Carolina')),
          Text(display),
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

class Columbus extends StatelessWidget {
  final eastontown = LandMarks(
      title: 'Easton Town Center',
      description:
          'Easton Town Center is a shopping center and mall in northeast Columbus, Ohio, United States. It opened in 1999. The core buildings and streets that comprise Easton are intended to look like a self-contained town, reminiscent of American towns and cities in the early-to-mid 20th century',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/ETC_mall_building.jpg/800px-ETC_mall_building.jpg');

  final germanvillage = LandMarks(
      title: 'German Village',
      description:
          'German Village is a historic neighborhood in Columbus, Ohio, just south of the city downtown. It was settled in the early-to-mid-19th century by a large number of German immigrants, who at one time comprised as much as a third of the city entire population',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/47/German_Village_1.jpg');

  final ohiostadium = LandMarks(
      title: 'Ohio Stadium',
      description:
          'Ohio Stadium is an American football stadium in Columbus, Ohio, on the campus of The Ohio State University. It primarily serves as the home venue of the Ohio State Buckeyes football team and is also the site for the university Spring Commencement ceremonies each May',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Ohio_Stadium_Overhead.jpg/800px-Ohio_Stadium_Overhead.jpg');
  final List<LandMarks> columbuslandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 39.96,
      destinationy: -82.99,
    );

    columbuslandmarks.add(eastontown);
    columbuslandmarks.add(germanvillage);
    columbuslandmarks.add(ohiostadium);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columbus'),
      ),
      body: Column(
        children: [
          const Text(
              'Columbus is the state capital and the most populous city in the U.S. state of Ohio. With a population of 905,748 for the 2020 census,[4] it is the 14th-most populous city in the U.S., the second-most populous city in the Midwest after Chicago, and the third-most populous state capital'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: columbuslandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(columbuslandmarks[index].image),
                ),
                title: Text(columbuslandmarks[index].title),
                subtitle: Text(columbuslandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Ohio()));
              },
              child: const Text('State of Ohio')),
          Text(display),
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

class Goodwell extends StatelessWidget {
  final hall = LandMarks(
      title: 'Goodwell Hall',
      description:
          'Franklin Hall in Goodwell, Oklahoma, USA, built during 1909-10 by a local contractor, has been used in various ways for housing throughout its history. It was listed on the National Register of Historic Places listings in Texas County, Oklahoma in 2007 with the alternate name Girls Dormitory/Boys Dormitory',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/e/e3/Franklin_Hall_%28Goodwell%2C_Oklahoma%29_from_SW_1.JPG');
  final List<LandMarks> goodwelllandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 36.59,
      destinationy: -101.63,
    );
    goodwelllandmarks.add(hall);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goodwell'),
      ),
      body: Column(
        children: [
          const Text(
              'Goodwell is a town in Texas County, Oklahoma, United States. The population was 1,293 at the 2010 census. Goodwell is home of Oklahoma Panhandle State University.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: goodwelllandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(goodwelllandmarks[index].image),
                ),
                title: Text(goodwelllandmarks[index].title),
                subtitle: Text(goodwelllandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Oklahoma()));
              },
              child: const Text('State of Oklahoma')),
          Text(display),
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

class Tulsa extends StatelessWidget {
  final cave = LandMarks(
      title: ' The Cave House',
      description:
          'The Cave is a cave in Tulsa, Oklahoma, United States. It is located in the Oklahoma Panhandle State University campus, on the campus of the Oklahoma Panhandle State University',
      image:
          'https://cavehousetulsa.com/resources/391410_3505253917847_367579886_n.jpg');

  final BOK = LandMarks(
      title: 'BOK Center',
      description:
          'The BOK Center, or Bank of Oklahoma Center, is a 19,199-seat multi-purpose arena and a primary indoor sports and event venue in Tulsa, Oklahoma, United States. Designed to accommodate arena football, hockey, basketball, concerts, and similar events, the facility was built at a cost of 178 million in public funds and 18 million in privately funded upgrades',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/BOK_Center_faccade.JPG/800px-BOK_Center_faccade.JPG');

  final oneok = LandMarks(
      title: 'Oneok Field',
      description:
          'Oneok Field (/ˈwʌnoʊk/ WUN-ohk)[8] is a baseball park in Tulsa, Oklahoma. Located in the historic Greenwood district adjacent to downtown Tulsa, it is the home of the Tulsa Drillers of the Double-A Central. The stadium is named for Oneok.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/b/bf/ONEOK_Field_Entrance.jpg');

  final List<LandMarks> tulsalandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 34.45,
      destinationy: -93.68,
    );
    tulsalandmarks.add(cave);
    tulsalandmarks.add(BOK);
    tulsalandmarks.add(oneok);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tulsa'),
      ),
      body: Column(
        children: [
          const Text(
              'Tulsa /ˈtʌlsə/ is the second-largest city in the state of Oklahoma and 47th-most populous city in the United States. The population was 413,066 as of the 2020 census'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: tulsalandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(tulsalandmarks[index].image),
                ),
                title: Text(tulsalandmarks[index].title),
                subtitle: Text(tulsalandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Oklahoma()));
              },
              child: const Text('State of Oklahoma')),
          Text(display),
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

class Lawrence extends StatelessWidget {
  final farm = LandMarks(
      title: 'Grinter Farms',
      description:
          'Grinter Farms is a farm in Lawrence, Oklahoma, United States. It is located in the Lawrence County, Oklahoma, United States, on the campus of the Oklahoma Panhandle State University',
      image:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ea/40/b1/fields-and-fields-of.jpg?w=800&h=-1&s=1');
  final debruce = LandMarks(
      title: 'Debruce Center',
      description:
          'The DeBruce Center is named in recognition of a lead gift from Paul DeBruce and the DeBruce Foundation. The foundation’s director, Paul DeBruce, of Mission Hills, Kansas, graduated from KU in 1973 with a bachelor’s degree in business administration',
      image:
          'https://images.adsttc.com/media/images/5846/83bb/e58e/ce10/1300/00c0/medium_jpg/Image_22_copyright_Hedrich_Blessing.jpg?1481016239');

  final List<LandMarks> lawrencelandmarks = [];
  final fish = Distance();
  String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 38.97,
      destinationy: -95.23,
    );

    lawrencelandmarks.add(farm);
    lawrencelandmarks.add(debruce);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lawrence'),
      ),
      body: Column(
        children: [
          const Text(
              'Lawrence is the county seat of Douglas County and sixth-largest city in Kansas. It is in the northeastern sector of the state, astride Interstate 70, between the Kansas and Wakarusa Rivers. As of the 2020 census, the population of the city was 94,934.[9] Lawrence is a college town and the home to both the University of Kansas and Haskell Indian Nations University.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: lawrencelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(lawrencelandmarks[index].image),
                ),
                title: Text(lawrencelandmarks[index].title),
                subtitle: Text(lawrencelandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Kansas()));
              },
              child: const Text('State of Kansas')),
          Text(display),
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

class Houston extends StatelessWidget {
  //const Houston({Key? key}) : super(key: key);
  final hermannpark = LandMarks(
      title: 'Hermann Park',
      description:
          'Located in the heart of Houston Texas, this park hosts more than six million visitors every year. This 445-acre park is the most significant public green space in Houston. Here, you will almost see all that Houston has to offer in just one spot ranging from Herman Park golf course, Houston garden centre, Houston Zoo, and the Houston Museum of natural sciences. While there, you can also rent a boat, feed ducks, and even take a train ride.',
      image:
          'https://www.hastingsfirm.com/wp-content/uploads/2020/07/water-will-landmark-houston.jpg');
  final spacecenter = LandMarks(
      title: 'Space Center Houston',
      description:
          'Space Center Houston, the official visitor center of NASA Johnson Space Center, is a must-see attraction in Houston. This is a huge complex, where you can walk through the space shuttle replica Independence and the enormous shuttle carrier aircraft it mounted on.',
      image:
          'https://www.planetware.com/photos-large/USTX/texas-houston-things-to-do-space-center-level-nine-tour.jpg');

  final Houstonmuseum = LandMarks(
      title: 'Houston Museum District',
      description:
          'The Museum District is one of Houston greatest cultural attractions, with 19 museums residing in this beautiful area of downtown. Eleven of these are free to the public.',
      image:
          'https://www.planetware.com/wpimages/2018/11/texas-houston-attractions-things-to-do-museum-district-tunnel.jpg');

  @override
  final List<LandMarks> houstonlandmarks = [];
  final fish = Distance();
  String display = '';
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 34.45,
      destinationy: -93.68,
    );
    houstonlandmarks.add(hermannpark);
    houstonlandmarks.add(spacecenter);
    houstonlandmarks.add(Houstonmuseum);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Houston'),
      ),
      body: Column(
        children: [
          const Text(
              'Lawrence is the county seat of Douglas County and sixth-largest city in Kansas. It is in the northeastern sector of the state, astride Interstate 70, between the Kansas and Wakarusa Rivers. As of the 2020 census, the population of the city was 94,934.[9] Lawrence is a college town and the home to both the University of Kansas and Haskell Indian Nations University.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: houstonlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(houstonlandmarks[index].image),
                ),
                title: Text(houstonlandmarks[index].title),
                subtitle: Text(houstonlandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Texas()));
              },
              child: const Text('State of Texas')),
          Text(display),
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

class Vancouver extends StatelessWidget {
  final treetop = LandMarks(
      title: ' treetops at Capilano Suspension Bridge',
      description:
          'This 140-meter-long suspension bridge draws over 800,000 visitors every year, and it’s not hard to see why. Swinging around mountainsides and swaying across the Capilano River from 110-feet high from the earth puts you not far above the glorious ancient Douglas firs',
      image:
          'https://tiqets-cdn.s3.eu-west-1.amazonaws.com/wordpress/blog/wp-content/uploads/2020/08/tim-trad-cnj0k9wYEAk-unsplash.jpg');
  final stanleypark = LandMarks(
      title: 'Pass a blissful afternoon at Stanley Park',
      description:
          'Stanley Park is Vancouver’s first, largest, and most beloved urban park – and one of the famous landmarks in Vancouver with the most repeat value.',
      image:
          'https://tiqets-cdn.s3.eu-west-1.amazonaws.com/wordpress/blog/wp-content/uploads/2020/08/ryan-koble-SFx77WgxFGA-unsplash.jpg');

  final rogerArena = LandMarks(
      title: 'Roger Arena',
      description:
          'The arena is a multi-purpose arena in Vancouver, British Columbia, Canada.',
      image:
          'https://i2.wp.com/tiqets-cdn.s3.eu-west-1.amazonaws.com/wordpress/blog/wp-content/uploads/2020/08/640px-Rogers_Arena_interior_2013.jpg?resize=640%2C427&ssl=1');

  final List<LandMarks> vancouverlandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 49.28,
      destinationy: -123.12,
    );
    vancouverlandmarks.add(treetop);
    vancouverlandmarks.add(stanleypark);
    vancouverlandmarks.add(rogerArena);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vancouver'),
      ),
      body: Column(
        children: [
          const Text(
              'Vancouver (/vænˈkuːvər/ (About this soundlisten) van-KOO-vər) is a major city in western Canada, located in the Lower Mainland region of British Columbia'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: vancouverlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(vancouverlandmarks[index].image),
                ),
                title: Text(vancouverlandmarks[index].title),
                subtitle: Text(vancouverlandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BCc()));
              },
              child: const Text('State of British Columbia')),
          Text(display),
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

class Cambridge extends StatelessWidget {
  final harvarduni = LandMarks(
      title: 'Harvard University',
      description:
          'Harvard University is a private research university in Cambridge, Massachusetts, United States. Founded in 1636, Harvard is the oldest institution of higher learning in the United States, and the third-oldest in the world. ',
      image:
          'https://unicen.americancouncils.org/wp-content/uploads/2020/06/harvard-online-course.jpg');

  final chalesriver = LandMarks(
      title: 'Chales River',
      description:
          'A nature reservation covering 950 acres along both sides of the Charles River offers bicycle and jogging paths, 12 tennis courts, six swimming pools and the popular Hatch Memorial Shell with live concerts.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/5/5a/Charles_River_Esplanade%2C_Boston%2C_Massachusetts.JPG');

  final memorialdrive = LandMarks(
      title: 'Memorial Drive',
      description:
          'Memorial Drive (colloquially referred to as Mem Drive) is a 3.9-mile (6.3 km) parkway along the north bank of the Charles River in Cambridge, Massachusetts, United States',
      image:
          'https://en.wikipedia.org/wiki/File:Charles_River_(Pear_Biter).jpg');

  final List<LandMarks> cambridgelandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 58.2,
      destinationy: 0.12,
    );
    cambridgelandmarks.add(harvarduni);
    cambridgelandmarks.add(chalesriver);
    cambridgelandmarks.add(memorialdrive);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambridge'),
      ),
      body: Column(
        children: [
          const Text(
              'Cambridge (/ˈkeɪmbrɪdʒ/[4] KAYM-brij) is a city in Middlesex County, Massachusetts, and part of the Boston metropolitan area as a major suburb of Boston.'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cambridgelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(cambridgelandmarks[index].image),
                ),
                title: Text(cambridgelandmarks[index].title),
                subtitle: Text(cambridgelandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Massachsetts()));
              },
              child: const Text('State of Massachsetts')),
          Text(display),
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

class Providence extends StatelessWidget {
  //const Providence({Key? key}) : super(key: key);
  final parkzoo = LandMarks(
      title: 'Roger Williams Park Zoo',
      description:
          'The park zoo is a zoo in Providence, Rhode Island, United States. It is the largest zoo in the state of Rhode Island, and the largest in the United States. The 40-acre Roger Williams Park Zoo is not only one of the oldest zoos in the country, but it is a paragon of modern zoo design and concept',
      image:
          'https://www.planetware.com/photos-large/USRI/rhode-island-usa-roger-williams-park.jpg');
  final waterfire = LandMarks(
      title: 'Water Fire',
      description:
          'Water Fire is a historic fire pit located in the historic Water Street neighborhood of Providence, Rhode Island, United States. The fire pit was used by the Providence Police Department as a staging area for the fire trucks that were dispatched to the area.',
      image:
          'https://www.planetware.com/photos-large/USRI/rhode-island-usa-providence-waterfire-2.jpg');
  final risd = LandMarks(
      title: 'RISD Museum of Art',
      description:
          'Whether your artistic passion is for French Impressionists or Japanese prints, or your design tastes run to ancient Egyptian, early American, or cutting-edge contemporary, you will find enough to keep you happy in the depth and breadth of this museum collections',
      image:
          'https://www.planetware.com/photos-large/USRI/rhode-island-usa-risd-museum-of-art-2.jpg');

  final List<LandMarks> providencelandmarks = [];
  final fish = Distance();
  String display = '';
  @override
  Widget build(BuildContext context) {
    display = fish.calc(
      originx: 40.68,
      originy: -73.98,
      destinationx: 36.31,
      destinationy: -94.12,
    );
    providencelandmarks.add(parkzoo);
    providencelandmarks.add(waterfire);
    providencelandmarks.add(risd);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Providence'),
      ),
      body: Column(
        children: [
          const Text(
              'Providence is the capital and most populous city of the U.S. state of Rhode Island. One of the oldest cities in the United States,'),
          const Text(
            'Homan ',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: providencelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(providencelandmarks[index].image),
                ),
                title: Text(providencelandmarks[index].title),
                subtitle: Text(providencelandmarks[index].description),
              );
            },
          )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RhodeIsland()));
              },
              child: const Text('Rhode Island')),
          Text(display),
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

class Distance {
  double originx = 0, originy = 0, destinationx = 0, destinationy = 0;
  double result = 0, x = 0, y = 0, deglen = 110.25;
  Distance(
      {this.originx = 0,
      this.originy = 0,
      this.destinationx = 0,
      this.destinationy = 0});
  String calc({originx, originy, destinationx, destinationy}) {
    x = originx - destinationx;
    y = (originy - destinationy) * cos(destinationx);
    result = deglen * sqrt(x * x + y * y).round();
    return '$result kilometers from 300 jay st';
  }

  void updatoriginvalues(neworiginx, neworiginy) {
    originx = neworiginx;
    originy = neworiginy;
  }
}

class LandMarks {
  final String title, description, image;
  LandMarks({this.title = '', this.description = '', this.image = ''});
}
