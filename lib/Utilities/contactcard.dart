import 'package:flutter/material.dart';
import 'constants.dart';

class Contact extends StatelessWidget {
  Contact(this.i, this.pad, this.text, this.f);
  final double pad;
  final String text;
  final Function f;
  final IconData i;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: f,
        child: Card(
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 18.0),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              i,
              color: Colors.black,
              size: 24.0,
            ),
            title: Padding(
              padding: EdgeInsets.only(right: pad),
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: khelpline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
