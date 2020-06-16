import 'dart:io';

import 'package:covid/Utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:covid/Utilities/symcard.dart';
import 'package:covid/Utilities/contactcard.dart';
import 'package:url_launcher/url_launcher.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  Future<bool> onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              'Are you sure?',
              style: ktext,
            ),
            content: new Text(
              'Do you want to exit the app',
              style: ktext,
            ),
            actions: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO", style: ktext),
              ),
              SizedBox(height: 16),
              new GestureDetector(
                onTap: () => exit(0),
                child: Text(
                  "YES",
                  style: ktext,
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  Image myImage;

  @override
  void initState() {
    super.initState();
    myImage = Image.asset(
      'images/symchart.png',
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
  }

  _launchPhone() async {
    const url = "tel:011-23978046";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchPhone1() async {
    const url = "tel:1916";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL() async {
    const url =
        'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/question-and-answers-hub/q-a-detail/q-a-coronaviruses#:~:text=symptoms';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return WillPopScope(
      onWillPop: onBackPressed,
      child: SafeArea(
        child: Scaffold(
          body: SlidingUpPanel(
            minHeight: 85,
            maxHeight: 580,
            backdropEnabled: true,
            borderRadius: radius,
            panel: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 33,
                  ),
                  SymCard(
                    'fever',
                    'Fever leads to rise of body temprature, usually above 37°C.',
                  ),
                  SymCard(
                    'headache',
                    'Headache is a painful sensation in any part of the head, ranging from sharp to dull, that may occur with other symptoms.',
                  ),
                  SymCard(
                    'cough',
                    ' Since Covid-19 irritates lung tissue, the cough is dry and persistent. It is accompanied with shortness of breath and muscle pain.',
                  ),
                  SymCard(
                    'fatigue',
                    'Feeling overtired, with low energy and a strong desire to sleep that interferes with normal daily activities.',
                  ),
                  SymCard(
                    'nasal-congestion',
                    'Difficulty in nasal breathing which is caused due to swollen nasal tissue. It leads shortness of breath and mouth breathing.',
                  ),
                  SymCard(
                    'sore-throat',
                    'Drying up or dehydration of throat muscles.',
                  ),
                  Text(
                    'FOR MORE INFORMATION',
                    style: ktext,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Contact(Icons.web, 105, "WHO.INT", _launchURL),
                  ),
                ],
              ),
            ),
            collapsed: Container(
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: radius),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_up,
                      size: 29,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        "Explore Symptoms",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              color: Colors.black26,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Symptoms',
                      style: ktitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 28.0,
                      bottom: 22,
                      left: 12,
                      right: 12,
                    ),
                    child: myImage,
                  ),
                  Text(
                    'CONTACT THE OFFICIALS',
                    style: ktext,
                  ),
                  Contact(
                      Icons.phone, 38.0, 'CENTRAL HELPLINE NO.', _launchPhone),
                  Contact(Icons.phone, 60.0, 'BMC HELPLINE NO.', _launchPhone1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
