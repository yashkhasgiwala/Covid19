import 'package:covid/Utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yash extends StatefulWidget {
  Yash(this.place, this.c, this.d);
  final String place, c, d;

  @override
  _YashState createState() => _YashState();
}

class _YashState extends State<Yash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 0,
            ),
            child: Text(
              widget.place,
              style: kstat,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                widget.c,
                style: kstat,
              ),
              Text(
                widget.d,
                style: kstatdeath,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'CASES',
                  style: ksmall1,
                ),
              ),
              Text(
                'DEATHS',
                style: ksmall1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
