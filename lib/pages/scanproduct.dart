import 'package:flutter/material.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';
import 'package:tellmewhatineed/pages/scannedprod.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:tellmewhatineed/main.dart';


class ScanProd extends StatefulWidget {
  @override
  _ScanProdState createState() => _ScanProdState();
}

class _ScanProdState extends State<ScanProd> {

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
              children: [
                SizedBox(height: 50),
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
                          image: AssetImage('assets/shampoo_s.png'),
                          fit: BoxFit.contain
                        )
                      ),
              ),
              SizedBox(height: 30),
              Text(
                'Please, try to align the product',
                 style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0
                ),

              ),
              SizedBox(height: 10),
              Text(
                'with the camera borders.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 20.0
                )
              ),
              SizedBox(height: 30),
               
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                   RaisedButton( 
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ScanProduct()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      '     Save Image     ',
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
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ScanProduct()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      '  Research  ',
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