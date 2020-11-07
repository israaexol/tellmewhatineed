import 'package:flutter/material.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';

void main() {
  runApp(MaterialApp(  
    home: ProdRecommend(),
  ));
}

class ProdRecommend extends StatefulWidget {
  @override
  _ProdRecommendState createState() => _ProdRecommendState();
}

class _ProdRecommendState extends State<ProdRecommend> {
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
                SizedBox(height: 40.0),
                Text(
                'We know you like and enjoy',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 18.0
                ),

                ),
                SizedBox(height:10.0),
                Text(
                  'TRESemmé Shampoo',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[500]
                  ),

                ),
                SizedBox(height:15.0),
                Text(
                  'How about for your next purchase',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 18.0
                  ),

                ),
                SizedBox(height:15.0),
                Text(
                  'you give this a try :',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 18.0
                  ),

                ),
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
                          image: AssetImage('assets/9.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
              ),
              SizedBox(height: 30),
              Text(
                'WOW Shampoo',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 22.0,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold
                ),

              ),
              SizedBox(height: 15),
              Text(
                '- It has 10% less Paraben',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                  color: Colors.red[400]
                ),

              ),
              SizedBox(height: 15),
              Text(
                '- It is more eco-friendly',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0,
                 color: Colors.red[400]

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
                      '     Add to my wishlist     ',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold,color: Colors.black),
                    )
                    ,
                  ),
                  


              ],
            ),
            SizedBox(height:15.0),
            Row(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton( 
                    onPressed: () {
                       
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      '  Replace with this one  ',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold,color:Colors.black),
                    )
                    ,
                  ),
              ],
            )
           
              ],
            ),

    ); 
    
    
  }
}