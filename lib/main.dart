import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tellmewhatineed/pages/loginpage.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tellmewhatineed/models/Logo.dart';
import 'package:tellmewhatineed/models/AboutUs.dart';



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

  int _currentIndex=0;

  List cardList= [
    Logo(),
    AboutUs(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result =[];
    for(var i=0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color(0xff4f7c6e),
      body: ListView( 
            children: [
              SizedBox(height: 200.0,),
              Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CarouselSlider( 
                  options: CarouselOptions(
                    height: 400.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    onPageChanged: (index,reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                    items: cardList.map((card){
                            return Builder(
                              builder:(BuildContext context){
                                return Container(
                                  height: MediaQuery.of(context).size.height*2,
                                  width: MediaQuery.of(context).size.width*1.5,
                                  child: Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: card,
                                  ),
                                );
                              }
                            );
                          }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.white : Colors.grey,
                      ),
                    );
                  }),
                ),
                              
              ],
            ),
             Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end, 
                children: [
                  Image( 
                    image: AssetImage('assets/ColRoadWhite.png'),
                    height: 150,
                    width: 150,
                  )


                ],
              )
        ]
      )
     

    );
  }
}
