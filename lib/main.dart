import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tellmewhatineed/pages/loginpage.dart';
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
      backgroundColor: Colors.red[300],
      body: ListView( 
            children: [
              SizedBox(height:330.0),
              Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Text(
                      'Tell me what I need',
                      textAlign: TextAlign.center,
                      style: TextStyle(  
                        fontFamily: 'Bellania',
                        fontWeight: FontWeight.normal,
                        fontSize: 40.0,
                        color: Colors.white,
                        ),
                        ),
                  SpinKitThreeBounce( 
                  color: Colors.white,
                  size: 30.0,
                ),
             
              ],
            ),
            SizedBox(height: 190.0),
             Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end, 
                children: [
                  Image( 
                    image: AssetImage('assets/ColRoad.png'),
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
