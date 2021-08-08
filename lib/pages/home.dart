import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff9dc6fb),
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Image.network(
      //       'https://image.flaticon.com/icons/png/512/4372/4372359.png',
      //       height: 35,
      //       width: 35,
      //     ),
      //   ),
      //   title: Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(280, 0, 8, 0),
      //         child: Image.network(
      //           'https://image.flaticon.com/icons/png/512/891/891581.png',
      //           height: 35,
      //           width: 35,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Color(0xff9dc6fb),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 5),
              child: Image.asset(
                'assets/fashion.png',
                height: 300,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  color: Colors.amber[100],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            'https://media0.giphy.com/media/YlT2C6hzYI1xXxanjj/giphy.gif?cid=6c09b952ijrj048vwfhx2ons4ucmsaoct486nsg923an7t37&rid=giphy.gif&ct=s',
                            height: 100,
                            width: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                        child: Text(
                          'What is Fast Fashion?',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  color: Colors.purple[50],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            'https://static.wixstatic.com/media/b7bb59_3ec522f117314a228251de1cd5ff7592~mv2.gif',
                            height: 120,
                            width: 120),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                        child: Text(
                          '3R : Reduce, Recycle, Reuse',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  color: Colors.green[100],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            'https://media3.giphy.com/media/k9qAEHbSFHWgsZc921/giphy.gif?cid=6c09b952sbt4a4nhcb5ss1fhkpna7ptgirpgz6zdtodwu3la&rid=giphy.gif&ct=s',
                            height: 130,
                            width: 130),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                        child: Text(
                          'Sustainable Fashion',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
