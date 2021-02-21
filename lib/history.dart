import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                'HISTORY',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // History
            SizedBox(
              height: 70,
            ),

            // Date And PH value Heading//
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text(
                        'DATE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'PH Value',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                //
                //
                SizedBox(
                  height: 90,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '2/8/2021 05:30 PM',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: Text(
                            '8.2',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blue[700],
                          ),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '9/8/2021 03:00 PM',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: Text(
                            '7.5',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.green[700],
                          ),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '16/8/2021 04:00 PM',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: Text(
                            '3.5',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.orange[800],
                          ),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                  ],
                )
              ], //Children of Column
            ),
            //
            //
            //
            //
            //////Sample Button to view PH vale page/////////
          ],
        ),
      ),
    );
  }
}
