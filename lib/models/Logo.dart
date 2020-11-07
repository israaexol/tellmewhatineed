import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
const Logo({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child:Column( 
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center, 
       children: [
          Text(
              'TELL ME',
              textAlign: TextAlign.center,
              style: TextStyle(  
                fontFamily: 'PalmBeach',
                fontWeight: FontWeight.normal,
                fontSize: 40.0,
                color: Colors.white,
                ),
                ),
          Text(
                'WHAT I NEED',
                textAlign: TextAlign.center,
                style: TextStyle(  
                  fontFamily: 'PalmBeach',
                  fontWeight: FontWeight.normal,
                  fontSize: 40.0,
                  color: Colors.white,
                  ),
                  ),
       ],
     )
     
    );
  }
}