import 'package:flutter/material.dart';
import 'package:tellmewhatineed/main.dart';
import 'package:tellmewhatineed/models/Product.dart';
import 'package:tellmewhatineed/pages/finalpage.dart';
import 'package:tellmewhatineed/pages/prodexpire.dart';
import 'package:tellmewhatineed/pages/productdetails.dart';
import 'package:tellmewhatineed/pages/scannedprod.dart';
import 'package:tellmewhatineed/pages/wishlist.dart';

void main() {
  runApp(MaterialApp(  
    home: SimilarProducts(),
  ));
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {

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
                trailing: Icon(Icons.arrow_right_rounded),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>Final()));
                },
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
            children: [
              Container(
                margin: EdgeInsets.only(left:20.0),
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Latest Similar Products',
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
                    _buildCard('TRESemmé Shampoo','10','assets/11.webp', true, context),
                    _buildCard('Dettol Hand Sanitzer','5','assets/1.jpg', false, context),
                     _buildCard('Dabur Hand Sanitizer','3', 'assets/2.jpg', false, context),
                     _buildCard('Purell Hand Sanitizer','4', 'assets/3.jpg', true,context),
                    _buildCard('SoftSoap Antibacterial', '5', 'assets/4.webp', false,context),
                     _buildCard('Dettol Liquid HandSoap','4', 'assets/5.jpg', true, context),
                     _buildCard('Dial Antibacterial','4', 'assets/6.webp', true,context),
                     _buildCard('Dial Hydrating Handsoap','4', 'assets/7.jpg', false,context),
                     _buildCard('Neutrogena Gel-Cream','4', 'assets/8.jpg', false,context),
                     _buildCard('WOW Shampoo','4', 'assets/9.jpg', true,context),
                     _buildCard('PILGRIM Sulfate Free Shampoo','4', 'assets/10.jpg', false,context),
                    _buildCard('Wander DiveIN Moisturizer','8', 'assets/12.jpg', false,context),



                  ]
                      

                  )
                  ),
                  SizedBox(height:15.0)
          
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