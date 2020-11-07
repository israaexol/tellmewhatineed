import 'package:flutter/material.dart';
import 'package:tellmewhatineed/models/Product.dart';
import 'package:tellmewhatineed/pages/finalpage.dart';
import 'package:tellmewhatineed/pages/productdetails.dart';
import 'package:tellmewhatineed/pages/scannedprod.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:tellmewhatineed/pages/scanproduct.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';
import 'package:tellmewhatineed/main.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';


class ScanProduct extends StatelessWidget {
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
              onTap: () {},
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
                        builder: (context) => ScanProd()));
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
               ListTile(
                title: Text("Wish List"),
                trailing: Icon(Icons.arrow_right_rounded),
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => WishList()));
              },
              ),
              SizedBox(height:30.0),
              ListTile(
                title: Text("Log Out"),
                 onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>Final()));
                },
              ),

    ],
  ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left:20.0),
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Your Scanned Products',
                  textAlign: TextAlign.center,
                  style: TextStyle(  
                    fontFamily: 'ProductSans',
                    fontSize: 30.0
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Expanded(
             child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    _buildCard('BIOTIN Shampoo','10','assets/shampoo.jpg', false, context),
                     _buildCard('Purell Hand Sanitizer','4', 'assets/3.jpg', false,context),
                     _buildCard('','4', 'assets/barcode_PNG34.png', false,context),
                  ]
                      
                  )
                  ),
          Padding(
            padding: const EdgeInsets.only(  
              bottom: 100.0
            ),
            child: Row(
              
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     RaisedButton( 
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>ScanProd()));
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent)
                        ),
                      child: Text( 
                        'Help',
                        style: 
                        TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                      )
                      ,
                    ),
                    
                ],
              ),
          ),
          
        ],
      )
      
      
    );
  }
}

Widget _buildCard(String name,String price, String img, bool isFavorite, context){
return Padding(  
  padding: EdgeInsets.all(5.0),
   child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdDetails(heroTag: img,imgPath: img)));
                      },
                            child: Container(
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                                child: Column(  
                                      children: [
                                         Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                isFavorite
                                                    ? Icon(Icons.favorite, color: Color(0xffFF9341))
                                                    : Icon(Icons.favorite_border,
                                                        color: Color(0xffFF9341)),
                                                Text(
                                                  '\$' + price,
                                                  style: TextStyle(  
                                                    fontFamily: 'ProductSans',
                                                    fontSize: 20.0
                                                  ),
                                                )
                                              ])),
                                        Hero( 
                                          tag: img,
                                          child:Container( 
                                            height: 120.0,
                                            width: 120.0,
                                            decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                            image: AssetImage(img),
                                            fit: BoxFit.contain
                                            )
                                              ),
                                        ),
                                        ),
                                      SizedBox(height: 7.0),
                                      Text(
                                          name,
                                          style: TextStyle(  
                                            fontFamily: 'ProductSans',
                                            fontSize: 12.0
                                          ),
                                        ),
                                      

                                      ],
                                    ),
                              ),
                                   
                                  ),
);
                        
            
}