import 'package:flutter/material.dart';
import 'dart:math';

//void main() {
//runApp(PictureGallery());
//}

class PictureGallery extends StatefulWidget {
  const PictureGallery({Key? key}) : super(key: key);

  @override
  _PictureGalleryState createState() => _PictureGalleryState();
}

class _PictureGalleryState extends State<PictureGallery> {
  int countbird = 1;
  int countcat = 1;
  int countdog = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Gallery-homan')),
      body: Center(
        child: Column(
          children: [
            RawMaterialButton(
              child: Image.asset('lib/images/bird$countbird.png'),
              onPressed: () {
                print('lib/images/bird$countbird.png');
                if (countbird == 5) countbird = 0;
                countbird = countbird + 1;

                setState(() {});
              },
            ),
            RawMaterialButton(
              child: Image.asset('lib/images/cat$countcat.png'),
              onPressed: () {
                print('lib/images/cat$countcat.png');
                if (countcat == 5) countcat = 0;
                countcat = countcat + 1;

                setState(() {});
              },
            ),
            RawMaterialButton(
              child: Image.asset('lib/images/dog$countdog.png'),
              onPressed: () {
                print('lib/images/dog$countdog.png');
                if (countdog == 5) countdog = 0;
                countdog = countdog + 1;

                setState(() {});
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () {
                      countbird--;
                      countcat--;
                      countdog--;
                      if (countbird == 0) countbird = 5;
                      if (countcat == 0) countcat = 5;
                      if (countdog == 0) countdog = 5;
                      setState(() {});
                    },
                    child: Text('Prev')),
                OutlinedButton(
                    onPressed: () {
                      countbird = Random().nextInt(5) + 1;
                      countcat = Random().nextInt(5) + 1;
                      countdog = Random().nextInt(5) + 1;

                      setState(() {});
                    },
                    child: Text('Random')),
                OutlinedButton(
                    onPressed: () {
                      countbird++;
                      countcat++;
                      countdog++;
                      if (countbird == 5) countbird = 1;
                      if (countcat == 5) countcat = 1;
                      if (countdog == 5) countdog = 1;
                      setState(() {});
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
