import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

bool abc = true, xyz = true;

class Sdata extends StatefulWidget {
  Sdata(this.n, this.i, this.j, this.k);
  var i, j, k, n;
  @override
  _SdataState createState() => _SdataState();
}

class _SdataState extends State<Sdata> {
  @override
  Widget build(BuildContext context) {
//    abc = !abc;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
//          color: abc ? Colors.grey[200] : Colors.lightBlue[100],
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 110,
              child: Text(
                widget.n.toString(),
                style: ksmall,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 85,
              child: Text(
                widget.i.toString(),
                style: ksmallC,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 95,
              child: Text(
                widget.j.toString() == 'null' ? '0' : widget.j.toString(),
                style: ksmallR,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 40,
              child: Text(
                widget.k.toString() == 'null' ? '0' : widget.k.toString(),
                style: ksmallD,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
