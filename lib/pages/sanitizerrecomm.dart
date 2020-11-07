import 'package:flutter/material.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';


class SanitizerRec extends StatelessWidget {
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
            drawer: new Drawer(),
            body: Column(
              children: [
                SizedBox(height: 100.0),
                Container(
                    margin: EdgeInsets.only(  
                      left: 90.0,
                      top: 20.0,
                      right: 90.0,
                    ),
                    height: 200.0,
                    width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/3.jpg'),
                          fit: BoxFit.contain
                        )
                      ),
              ),
              SizedBox(height: 30),
              Text(
                'Using a hand sanitizer is also very',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 22.0,
                  color: Colors.black,
                ),

              ),
              SizedBox(height: 10),
              Text(
                'important,  especially when you' + '\'' +'re not',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                  color: Colors.black
                ),

              ),
              SizedBox(height: 10),
              Text(
                'near any water resources!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                 color: Colors.black

                )
              ),
              
            SizedBox(height: 30),
            Text(
                'Would you also like to purchase',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                 color: Colors.black

                )
              ),
              SizedBox(height: 15),
            Text(
                'a hand sanitizer?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                 color: Colors.black,
                 fontWeight: FontWeight.bold

                )
              ),
              SizedBox(height: 30),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                   RaisedButton( 
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Yes!',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                    )
                    ,
                  ),
                  RaisedButton( 
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => SimilarProducts()));
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
            
           
              ],
            ),

    ); 
  }
}