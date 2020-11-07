import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tellmewhatineed/pages/loginpage.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';

void main() {
  runApp(MaterialApp(  
    home: Loading(),
  ));
}

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(  
      builder: (context) => SimilarProducts()
    ));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color(0xff4f7c6e),
      body: ListView( 
            children: [
              SizedBox(height:330.0),
              Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Text(
                      'TELL ME',
                      textAlign: TextAlign.center,
                      style: TextStyle(  
                        fontFamily: 'PalmBeach',
                        fontWeight: FontWeight.normal,
                        fontSize: 40.0,
                        color: Colors.white70,
                        ),
                        ),
                  SizedBox(height: 30.0),
                  Text(
                      'WHAT I NEED',
                      textAlign: TextAlign.center,
                      style: TextStyle(  
                        fontFamily: 'PalmBeach',
                        fontWeight: FontWeight.normal,
                        fontSize: 40.0,
                        color: Colors.white70,
                        ),
                        ),
                  SpinKitThreeBounce( 
                  color: Colors.white,
                  size: 30.0,
                ),
             
              ],
            ),
            SizedBox(height: 100.0),
             Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end, 
                children: [
                  Image( 
                    image: AssetImage('assets/ColRoadWhite.png'),
                    height: 200,
                    width: 200,
                  )


                ],
              )
        ]
      )
     

    );
  }
}
