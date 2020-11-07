import 'package:flutter/material.dart';
import 'package:tellmewhatineed/models/Product.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';
import 'package:tellmewhatineed/pages/scannedprod.dart';
import 'package:tellmewhatineed/main.dart';


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
      backgroundColor: Color(0xffFCDBC1),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xffFFAE70)),
        backgroundColor: Colors.white,
        title:  
            Container(
              margin: EdgeInsets.only( 
                right: 0.0
              ),
              alignment: Alignment.center,
              child: Image.asset(
              'assets/ColRoad.png',
              fit: BoxFit.fill,
              height: 80.0,
              width: 80.0,
        ),
            ),
        actions: [
          Padding( 
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdExpire()));
              },
              child: Icon(
                Icons.notifications,
                size: 26.0,
        ),
      )
          ),
          Padding( 
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => WishList()));
              },
              child: Icon(
                Icons.shopping_cart,
                size: 26.0,
        ),
      )
          ),
        ],
      ),  
      drawer: new Drawer(
         child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Categories"),
                trailing: Icon(Icons.arrow_right_rounded)
              ),
              ListTile(
                title: Text("Brands"),
                trailing: Icon(Icons.arrow_right_rounded),
              ),
              ListTile(
                title: Text("Select Price"),
                trailing: Icon(Icons.arrow_right_rounded),
              ),
              ListTile(
                title: Text("Scan Product"),
                trailing: Icon(Icons.arrow_right_rounded),
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ScanProduct()));
              },
              ),
              ListTile(
                title: Text("Latest Products"),
                trailing: Icon(Icons.arrow_right_rounded),
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => SimilarProducts()));
              },
              ),
              SizedBox(height:30.0),
              ListTile(
                title: Text("Log Out"),
                 onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>Loading()));
                },
              ),

    ],
  ),
      ),
      body: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    margin: EdgeInsets.only(  
                      left: 90.0,
                      top: 30.0,
                      right: 90.0,
                    ),
                    height: 250.0,
                    width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit: BoxFit.cover
                        )
                      ),
              ),
                ),
            ),
            SizedBox(height: 20),
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
               itemBuilder: (context, _)=> Icon(Icons.favorite, color: Color(0xffFF9341)),
                 onRatingUpdate: (rating){print(rating);}
             ),
            SizedBox(height: 10),
            Text(
              'How long do you generally use this',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20.0
              )
            ),
            SizedBox(height: 5),
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
                activeTrackColor: Color(0xffFF9341),
                inactiveTrackColor: Colors.white,
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 4.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                thumbColor: Color(0xffFF9341),
                overlayColor: Color(0xffFF9341),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                tickMarkShape: RoundSliderTickMarkShape(),
                activeTickMarkColor: Color(0xffFF9341),
                inactiveTickMarkColor: Color(0xffFF9341),
                valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                valueIndicatorColor: Color(0xffFFAE70),
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProductSans'
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                   RaisedButton( 
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Buy',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                    )
                    ,
                  ),
                  


              ],
            ),
            SizedBox(height: 5),
            Row(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton( 
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdExpire()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Add to cart',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                    )
                    ,
                  ),

              ],

            ),
            SizedBox(height: 5),
            Row(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton( 
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdExpire()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Cancel',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
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