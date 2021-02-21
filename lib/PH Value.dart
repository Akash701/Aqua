import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Phvalue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0A0D21),
      appBar: AppBar(
        backgroundColor: Color(0XFF0A0D21),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PH VALUE',
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF007f00),
              ),
            ),
            SizedBox(height: 60),
            Container(
              child: Text(
                '8.2',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue[700],
              ),
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            )
          ],
        ),
      )),
    );
  }
}
