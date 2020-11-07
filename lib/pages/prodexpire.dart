import 'package:flutter/material.dart';
import 'package:tellmewhatineed/pages/prodrecommend.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';
import 'package:tellmewhatineed/pages/scannedprod.dart';
import 'package:tellmewhatineed/pages/scanproduct.dart';


void main() {
  runApp(MaterialApp(  
    home: ProdExpire(),
  ));
}

class ProdExpire extends StatefulWidget {
  @override
  _ProdExpireState createState() => _ProdExpireState();
}

class _ProdExpireState extends State<ProdExpire> {
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
              SizedBox(height:30.0),
              ListTile(
                title: Text("Log Out"),
              ),

    ],
  ),
            ),
            body: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(  
                      left: 90.0,
                      top: 60.0,
                      right: 90.0,
                    ),
                    height: 270.0,
                    width: 270.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/7.jpg'),
                          fit: BoxFit.contain
                        )
                      ),
              ),
              SizedBox(height: 30),
              Text(
                'A product you use will end in about',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0
                ),

              ),
              SizedBox(height: 20),
              Text(
                '6 DAYS',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 50.0,
                  color: Colors.red[400]
                ),

              ),
              SizedBox(height: 20),
              Text(
                'Would you like to purchase another',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0
                )
              ),
              SizedBox(height: 10),
                Text(
                'piece and enjoy it even more?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0
                ),

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
                      'Confirm',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                    )
                    ,
                  ),
                  RaisedButton( 
                    onPressed: () { //ProdRecommend()));
                    
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ScanProd()));},

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