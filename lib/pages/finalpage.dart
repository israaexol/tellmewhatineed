import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tellmewhatineed/main.dart';

class Final extends StatefulWidget {
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
    double rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFAE70),
     body:Column( 
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center, 
       children: [
         SizedBox(height:100.0),
          Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: TextStyle(  
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
                ),
                ),
          Text(
                'Before leaving, please feedback us!',
                textAlign: TextAlign.center,
                style: TextStyle(  
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                  ),
                  ),
                  SizedBox(height: 20),
             RatingBar(
               itemCount: 5,
               initialRating: 3,
               direction: Axis.horizontal,
               allowHalfRating: true,
               itemBuilder: (context, _)=> Icon(Icons.favorite, color: Colors.orange[900]),
                 onRatingUpdate: (rating){print(rating);}
             ),
                               SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                maxLines: 3,
                decoration: new InputDecoration(
                hintText: 'Leave a message',
                hintStyle: TextStyle(  
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                  color: Colors.black38
                ),
                filled: true,
                fillColor: Colors.white,
                 enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange[900], width: 0.0),
              
                  ),
              ),
            ),
             ),
             SizedBox(height: 20.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                   RaisedButton( 
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>Loading()));
                    },
                    color: Colors.orange[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Submit',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold, color: Colors.white),
                    )
                    ,
                  ),
                  RaisedButton( 
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>Loading())); //ProdRecommend()));
                    },
                    color: Colors.orange[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Remind me Later',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold, color: Colors.white),
                    )
                    ,
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
       ],
     )
     
    );
  }
}