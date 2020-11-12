import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _data = Data('lib/images/cake.jpg', 'French Vanilla Cake', '1700');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget 2'),
        backgroundColor: const Color(0xffD61E22),
      ),
      body: SafeArea(
        child: card(_data),
      ),
    );
  }

  Widget card(var data) {
    var refHeight = MediaQuery.of(context).size.height;
    var refWidth = MediaQuery.of(context).size.width;
    return Container(
      height: refHeight * 0.30,
      width: refWidth * 0.55,
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('${data.image}'),
                      fit: BoxFit.cover,
                    )),
              )),
          Expanded(
            flex: 7,
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  Expanded(
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10.00),
                    child: Text(
                      '${data.title}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.00,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.00),
                    alignment: Alignment.topLeft,
                    height: 20,
                    child: Text(
                      'Rs ${data.price}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xffFF2121),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  //   ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10.00, top: 10.00),
                    height: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: const Color(0xffFF2121), width: 2)),
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(color: const Color(0xffFF2121)),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
