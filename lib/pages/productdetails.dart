import 'package:flutter/material.dart';
import 'package:tellmewhatineed/models/Product.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class ProdDetails extends StatefulWidget {

  double rating;
  final heroTag, imgPath;
  ProdDetails({this.heroTag, this.imgPath});
  
  @override
  _ProdDetailsState createState() => _ProdDetailsState();
}

class _ProdDetailsState extends State<ProdDetails> {
 double _rating = 1.0;
  double _userRating = 3.0;
  int _ratingBarMode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title:  
            Container(
              margin: EdgeInsets.only( 
                right: 120.0
              ),
              alignment: Alignment.center,
              child: Image.asset(
              'assets/website-columbia-road-logo-color.webp',
              fit: BoxFit.fill,
              height: 80.0,
              width: 80.0,
        ),
            ),
        actions: [
          Padding( 
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 26.0,
        ),
      )
          ),
          Padding( 
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart,
                size: 26.0,
        ),
      )
          ),
        ],
      ),  
      drawer: new Drawer(),
      body: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    margin: EdgeInsets.only(  
                      left: 90.0,
                      top: 70.0,
                      right: 90.0,
                    ),
                    height: 250.0,
                    width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit: BoxFit.cover
                        )
                      ),
              ),
                ),
            ),
            SizedBox(height: 30),
            Text(
              'If you have used this product before',
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20.0
              ),

            ),
            SizedBox(height: 10),
            Text(
              'How well do you like it ?',
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20.0
              ),

            ),
             SizedBox(height: 20),
             RatingBar(
               itemCount: 5,
               initialRating: 3,
               direction: Axis.horizontal,
               allowHalfRating: true,
               itemBuilder: (context, _)=> Icon(Icons.favorite, color: Colors.blue[300]),
                 onRatingUpdate: (rating){print(rating);}
             ),
            SizedBox(height: 20),
            Text(
              'How long do you generally use this',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20.0
              )
            ),
            SizedBox(height: 10),
              Text(
              'Product ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20.0
              ),

            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.red[700],
                inactiveTrackColor: Colors.red[100],
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 4.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                thumbColor: Colors.redAccent,
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                tickMarkShape: RoundSliderTickMarkShape(),
                activeTickMarkColor: Colors.red[700],
                inactiveTickMarkColor: Colors.red[100],
                valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                valueIndicatorColor: Colors.redAccent,
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Slider(
                value: _rating,
                min: 0,
                max: 100,
                divisions: 20,
                label: '$_rating' + ' days',
                onChanged: (newRating) {
                  setState(
                    () {
                      _rating = newRating;
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                   RaisedButton( 
                    onPressed: () {},
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Buy',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.w500),
                    )
                    ,
                  ),
                  RaisedButton( 
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdExpire()));
                    },
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Cancel',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.w500),
                    )
                    ,
                  ),


              ],
            ),
           

          ]
    )
      
    );
  }
}