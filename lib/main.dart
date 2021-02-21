import 'package:aqua/Help.dart';
import 'package:aqua/Home.dart';
//import 'package:aqua/Map.dart';
//import 'package:aqua/Location.dart';
//import 'package:aqua/Map.dart';
import 'package:flutter/material.dart';
import 'history.dart';
import 'PH Value.dart';
import 'MapPage.dart';

void main() => runApp(Aqua());

class Aqua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0D21),
        scaffoldBackgroundColor: Color(0xFF0A0D21),
      ),
      initialRoute: '/1',
      routes: {
        '/1': (context) => Home(),
        '/2': (context) => MapPage(),
        '/3': (context) => History(),
        '/4': (context) => Phvalue(),
        '/5': (context) => Help(),
      },
    );
  }
}
