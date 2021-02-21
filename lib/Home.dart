//import 'package:aqua/history.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'AQUA',
            style: TextStyle(
              fontFamily: 'Cinzel',
              fontWeight: FontWeight.w600,
              fontSize: 40,
            ),
          ),
        ),
        leading: Align(
          alignment: Alignment.topRight,
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/5');
            },
            child: Icon(
              Icons.help_outline_rounded,
              size: 30.0,
              color: Color(0xFF007f00),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(50),
                child: Image.asset('image/boat.jpg'),
              ),
              Center(
                child: Text(
                  'Select "DEPLOY" after placing the boat on water ',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 80, left: 15, right: 15, bottom: 10),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/2');
                    },
                    color: (Colors.white),
                    child: Text(
                      'DEPLOY',
                      style: TextStyle(color: Color(0xFF007f00), fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 90, left: 15, right: 15),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/3');
                    },
                    color: (Colors.white),
                    child: Text(
                      'HISTORY',
                      style: TextStyle(color: Color(0xFF007f00), fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
