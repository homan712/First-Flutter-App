import 'package:flutter/material.dart';
import 'package:ios_merge_apps/countries.dart';

class Kansas extends StatelessWidget {
  const Kansas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Kansas'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Kansas (/ˈkænzəs/ (About this soundlisten)) is a state in the Midwestern United States.[10] Its capital is Topeka and its largest city is Wichita.[11] Kansas is bordered by Nebraska to the north; Missouri to the east; Oklahoma to the south; and Colorado to the west. Kansas is named after the Kansas River, which in turn was named after the Kansa Native Americans who lived along its banks'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'When it comes to hiking, Kansas should be on every outdoor lovers’ list. It’s the ideal place for day hikers or backpackers who want to cover some distance without the lung-busting thin air that comes with high-altitude treks, and the hundreds of miles of wilderness trails have a quiet peacefulness will allow you to deeply connect with nature. While there are countless paths to explore, here are 9 of our favorites to help get you started.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Kansas may be a farming state, but where else can you find a piece of the Great Plains that hearkens back to the Pioneer era? Beyond the wheat fields, you find cool reservoirs, pocket forests, and preserved prairies—many just a short drive from Kansas City.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class Oklahoma extends StatelessWidget {
  const Oklahoma({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Oklahoma'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Oklahoma (/ˌoʊkləˈhoʊmə/ (About this soundlisten))[26] is a state in the South Central region of the United States,[27] bordered by the state of Texas on the south and west, Kansas on the north, Missouri on the northeast, Arkansas on the east, New Mexico on the west, and Colorado on the northwest'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Hit the trails and hike Oklahoma to get a sense of our state’s diverse terrain and outdoor wonders. Whether you’re an expert hiker or just enjoy recreational hiking trails, Oklahoma offers outdoor recreation areas for every skill level. Oklahoma’s state parks offer thousands of miles of hiking trails amidst towering pines, along rocky ridges and across wide open prairie lands.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Pitch a tent and camp out under the stars in Oklahoma for a back-to-nature escape. Build lasting memories on a family camping trip while roasting wienies, toasting marshmallows and telling stories around the campfire.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class NewYorkState extends StatelessWidget {
  const NewYorkState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of New York'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'New York is a state in the northeastern United States. It was one of the original thirteen colonies forming the United States. With a total area of 54,556 square miles (141,300 km2),[2] New York is the 27th largest state geographically'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Ready to check out the best trails in New York for hiking, mountain biking, climbing or other outdoor activities? AllTrails has 3,807 hiking trails, mountain biking routes, backpacking trips and more. Discover hand-curated trail maps, along with reviews and photos from nature lovers like you'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Immerse yourself in the peace and tranquility of nature with a camping trip in New York State, where great options abound, from crisp, star-flecked nights in the Adirondacks to the Catskills, where you’re never far from amazing family activities like canoeing, hiking, and fishing. '),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class NC extends StatelessWidget {
  const NC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of North Carolina'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'North Carolina (/ˌkærəˈlaɪnə/ (About this soundlisten)) is a state in the Southeastern region of the United States. North Carolina is the 28th largest and 9th-most populous of the 50 United States'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Ready to check out the best trails in North Carolina for hiking, mountain biking, climbing or other outdoor activities? AllTrails has 2,509 hiking trails, mountain biking routes, backpacking trips and more. Discover hand-curated trail maps, along with reviews and photos from nature lovers like you.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'North Carolina State Parks offer many exciting camping options, from cabins nestled in the forest to primitive beach camping. Our parks offer family camping, group camping, tent and RV sites, paddle-in sites, and much more'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class Ohio extends StatelessWidget {
  const Ohio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Ohio'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Ohio (/oʊˈhaɪoʊ/ (About this soundlisten)) is a state in the Midwestern region of the United States. Of the fifty states, it is the 34th-largest by area, and with a population of nearly 11.8 million, is the seventh-most populous and tenth-most densely populated'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'he Buckeye State is the home of the American Football Hall of Fame, the birthplace of seven American presidents, and some of the most incredible places to load up a pack and blaze a trail. The temperate climate and small rugged hills beckon to those who have a thirst for nature'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'It’s no secret that Ohioans love to camp: More than 2 million visitors spent a night in state park campgrounds in 2018. The number of nights that campsites were used was 638,801. In other words, that’s a lot of s’mores around campfires.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class Texas extends StatelessWidget {
  const Texas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Texas'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Texas (/ˈtɛksəs/, also locally /ˈtɛksɪz/;[9] Spanish: Texas, Tejas[a][10]) is a state in the South Central region of the United States. At 268,596 square miles (695,662 sq km), and with more than 29.1 million residents in 2020, it is the second-largest U.S. state by both area (after Alaska) and population (after California)'),
                  const Text(
                    'Homan Wong',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Texas is a huge state and even though much of the terrain is the rugged desert landscape that you would expect, you will also be surprised at the diversity you will find on the trail. From lush swimming holes, to wildflower meadows and epic summit views, the Lone Star State has a few gems hidden up its sleeve'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'From primitive tent camping to awesome spots to park an RV, the best places to camp in Texas offer stunning landscapes to sleep near. The Texas Panhandle; the Texas Coast; and the south, central, and western parts of the state all feature great places to go camping'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class BCc extends StatelessWidget {
  const BCc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('British of Columbia'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'British Columbia (BC) is the westernmost province of Canada, situated between the Pacific Ocean and the Rocky Mountains'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Canada()));
                      },
                      child: const Text('Canada')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Ready to check out the best trails in British Columbia for hiking, mountain biking, climbing or other outdoor activities? AllTrails has 5,437 hiking trails, mountain biking routes, backpacking trips and more. Discover hand-curated trail maps, along with reviews and photos from nature lovers like you.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Canada()));
                      },
                      child: const Text('Canada')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'It’s hard to describe British Columbia as anything other than wildly breathtaking—quite literally when you swim in one of the province’s many turquoise glacier lakes, ride a wave, or catch a glimpse of a bear in the forest. For camping experiences and road trips, BC offers privately operated campgrounds and RV parks; a major network of parks with reservable and first-come, first-served tent camping sites; yurts and cabins; and thousands of recreation sites and trails on beaches, lakes, mountains, and meadows'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Canada()));
                      },
                      child: const Text('Canada')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class Massachsetts extends StatelessWidget {
  const Massachsetts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Massachsetts'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Massachusetts (/ˌmæsəˈtʃuːsɪts/ (About this soundlisten), /-zɪts/), officially the Commonwealth of Massachusetts,[a] is the most populous state in the New England region of the United States'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Ready to check out the best trails in Massachusetts for hiking, mountain biking, climbing or other outdoor activities? AllTrails has 2,802 hiking trails, mountain biking routes, backpacking trips and more. Discover hand-curated trail maps, along with reviews and photos from nature lovers like you'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Among the choices of Massachusetts lodgings and accommodations are public and private campgrounds. Massachusetts campgrounds are operated at many of the dozens of state forests and state parks throughout the state, including the Boston Harbor islands and on Cape Cod'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}

class RhodeIsland extends StatelessWidget {
  const RhodeIsland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('State of Rhode Island'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Hiking',
                ),
                Tab(
                  text: 'Camping',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const Text(
                      'Rhode Island (/ˌroʊd -/ (About this soundlisten), like road),[7][8] officially the State of Rhode Island, is a state in the New England region of the United States'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'The tiny state of Rhode Island sports a 400-mile-long coastline that’s disproportionate to its size; the state is only 37 miles wide and 48 miles long. Nicknamed the Ocean State, Rhode Island has a rich history as a New England seaside playground. Home to high-end summer vacation homes, woodlands and ponds, and miles of gorgeous beaches, Rhode Island is a little state that packs a big punch.'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
              Column(
                children: [
                  const Text(
                      'Get back to nature and sleep under a blanket of stars at one of Rhode Island’s many campgrounds. Fun and affordable, you’ll find them tucked into the woods, with many just a stone’s throw from the shore. Check out all of Rhode Island campgrounds here and click here to download your own printable guide to camping in the Ocean State. For more information about camping at state parks, and to make reservations'),
                  const Text(
                    'homan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Usa()));
                      },
                      child: const Text('United States')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'))
                ],
              ),
            ],
          )),
    );
  }
}
