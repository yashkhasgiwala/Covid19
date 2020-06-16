import 'dart:async';
import 'BottomNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid/Utilities/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:covid/Networking/network.dart';

dynamic Gcase, Mcase, Gdeath, Mdeath, stateN;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getGlobal();
    getMumbai();
    getState();
    Timer(
      Duration(milliseconds: 5000),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      ),
    );
  }

  void getState() async {
    Network nS = Network('https://api.covid19india.org/v3/data.json');
    stateN = await nS.getData();
//    stateN = await nS.getStateName();
    setState(() {
      stateN = stateN;
    });
  }

  void getMumbai() async {
    Network nM =
        Network('https://api.covid19india.org/state_district_wise.json');
    await nM.getData();
    Mcase = await nM.getMCases();
    Mdeath = await nM.getMDeaths();
    setState(() {
      if (Mcase == null)
        Mcase = 'Not Available';
      else
        Mcase = Mcase;
      if (Mdeath == null)
        Mdeath = 'Not Available';
      else
        Mdeath = Mdeath;
    });
  }

  void getGlobal() async {
    Network nG = Network('https://api.covid19api.com/summary');
    await nG.getData();
    Gcase = await nG.getGCases();
    Gdeath = await nG.getGDeaths();
    setState(() {
      if (Gcase == null)
        Gcase = 'Not Available';
      else
        Gcase = Gcase;
      if (Gdeath == null)
        Gdeath = 'Not Available';
      else
        Gdeath = Gdeath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 55.0,
                  bottom: 17,
                ),
                child: Image(
                  height: 180,
                  image: AssetImage('images/virus.png'),
                ),
              ),
              Center(
                child: Text(
                  'SARS-CoV-2',
                  style: ktitle,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 48.0,
                      left: 8,
                    ),
                    child: Image(
                      height: 260,
                      width: 150,
                      image: AssetImage('images/doc.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 200.0,
                    width: 25.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: VerticalDivider(
                        color: Colors.grey[100],
                        thickness: 1.35,
                      ),
                    ),
                  ),
                  NewWidget(['\nTHANK YOU\nHEALTH\nWORKERS']),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final List<String> t;
  NewWidget(this.t);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: TyperAnimatedTextKit(
        text: t,
        textStyle: TextStyle(
          fontSize: 31,
          fontFamily: 'Patua',
        ),
        speed: Duration(milliseconds: 140),
        textAlign: TextAlign.start,
//      pause: Duration(milliseconds: 3550),
        isRepeatingAnimation: false,
        alignment: AlignmentDirectional.topStart,
      ),
    );
  }
}
