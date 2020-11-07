import 'package:flutter/material.dart';
import 'package:tellmewhatineed/pages/prodrecommend.dart';

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
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/7.jpg'),
                          fit: BoxFit.cover
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
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Confirm',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.w500),
                    )
                    ,
                  ),
                  RaisedButton( 
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => ProdRecommend()));
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
           
              ],
            ),

    ); 
    
    
  }
}