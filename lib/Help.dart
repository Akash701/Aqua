import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INSTRUCTION',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF007f00),
                ),
              ),
              Text(
                '1 - Click on "Deploy" after placing the boat on water',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '2 - Use the Navigator arrows to control the boat and use the map to track the boat',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '3 - After placing the boat at your preferred location click on "CHECK" to view the Ph value ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '4 - To know the recent ph values come back to home and click on "History" ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
