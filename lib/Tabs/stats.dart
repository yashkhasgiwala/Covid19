import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/Utilities/constants.dart';
import 'package:covid/Utilities/yash.dart';
import 'package:covid/Screens/SplashScreen.dart';
import 'package:covid/Utilities/statedata.dart';
import 'package:covid/Networking/lists.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
//                      bottom: 5.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'COVID',
                            style: ktitle,
                          ),
                          Text(
                            '19',
                            style: TextStyle(
                              fontFamily: 'Patua',
                              fontSize: 37,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Yash('GLOBAL', Gcase.toString(), Gdeath.toString()),
                          Yash('MUMBAI', Mcase.toString(), Mdeath.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 110,
                            child: Text(
                              'State',
                              textAlign: TextAlign.center,
                              style: ksmall,
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              'Confirmed',
                              textAlign: TextAlign.center,
                              style: ksmall,
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              'Recovered',
                              textAlign: TextAlign.center,
                              style: ksmall,
                            ),
                          ),
                          Container(
                            width: 55,
                            child: Text(
                              'Deaths',
                              textAlign: TextAlign.center,
                              style: ksmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DraggableScrollableSheet(
                maxChildSize: 0.91,
                initialChildSize: 0.59,
                minChildSize: 0.59,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30.0)),
                      color: Colors.white,
                    ),
                    child: ListView.builder(
                        controller: scrollController,
                        itemCount: 34,
                        itemBuilder: (BuildContext context, int index) {
                          return Sdata(
                              names[index],
                              stateN[code[index]]['total']['confirmed'],
                              stateN[code[index]]['total']['recovered'],
                              stateN[code[index]]['total']['deceased']);
                        }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
