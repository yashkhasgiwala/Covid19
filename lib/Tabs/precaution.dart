import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/Utilities/constants.dart';

class Precaution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    'Precautions',
                    style: ktitle,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Wash\nHands\nOften',
                      style: kprecaution,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/wash.png'),
                    width: 200,
                    height: 220,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/mask.png'),
                    width: 200,
                    height: 220,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      'Wear a\nmask \naround\nothers',
                      style: kprecaution,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Keep a \nSanitizer \nHandy',
                      style: kprecaution,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/santize.png'),
                    width: 180,
                    height: 180,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/nocontact.png'),
                    width: 200,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Avoid\nphysical \ncontact',
                      style: kprecaution,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Monitor\nyour\nhealth',
                      style: kprecaution,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Image(
                      image: AssetImage('images/monitor.jpg'),
                      width: 160,
                      height: 180,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/wfh.jpg'),
                    width: 200,
                    height: 220,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Work\nfrom \nhome',
                      style: kprecaution,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/clean.jpg'),
                    width: 200,
                    height: 220,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Clean and\ndisinfect \nregularly',
                      style: kprecaution,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Follow\nGovernment\nProtocols',
                      style: kprecaution,
                    ),
                  ),
                  Image(
                    image: AssetImage('images/14days.png'),
                    width: 155,
                    height: 180,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  'Maintain Social\nDistancing',
                  style: kprecaution,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/mask-man.jpg'),
                      width: 140,
                      height: 200,
                    ),
                    Image(
                      image: AssetImage('images/mask-woman.PNG'),
                      width: 140,
                      height: 180,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 15),
                child: Text(
                  'Avoid Travelling',
                  style: kprecaution,
                ),
              ),
              Image(
                image: AssetImage('images/avoidtravel.PNG'),
                height: 240,
                width: 350,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 15),
                child: Text(
                  'How not to wear \na mask',
                  style: kprecaution,
                  textAlign: TextAlign.center,
                ),
              ),
              Image(
                image: AssetImage('images/hownot.jpg'),
                height: 240,
                width: 500,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 15),
                child: Text(
                  'Donate',
                  style: kprecaution,
                  textAlign: TextAlign.center,
                ),
              ),
              Image(
                image: AssetImage('images/donate.PNG'),
                height: 240,
                width: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
