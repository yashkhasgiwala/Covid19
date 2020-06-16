import 'package:flutter/material.dart';
import 'constants.dart';

class SymCard extends StatelessWidget {
  SymCard(this.symptom, this.description);
  final String symptom, description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 2,
      ),
      child: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 17, left: 45.0, bottom: 25),
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 98.0,
                      right: 3,
                    ),
                    child: Text(
                      description,
                      style: ksymdescription,
                    ),
                  ),
                ),
                height: 120,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
//                color: Colors.red,
                  border: Border.all(
                    color: Colors.grey[100],
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Image(
              image: AssetImage('images/$symptom.png'),
              height: 155,
              width: 140,
            )
          ],
        ),
      ),
    );
  }
}
