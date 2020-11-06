import 'package:flutter/material.dart';
import 'package:tellmewhatineed/models/Product.dart';
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



  final List<Product> _listItem = [
    Product(title: 'Shampoo1', price: '350', img: 'assets/1.jpg'),
    Product(title: 'Shampoo2', price: '350', img: 'assets/2.jpg'),
    Product(title: 'Shampoo3', price: '350', img: 'assets/3.jpg'),
    Product(title: 'Shampoo4', price: '350', img: 'assets/4.webp'),
    Product(title: 'Shampoo5', price: '350', img: 'assets/5.jpg'),
    Product(title: 'Shampoo6', price: '350', img: 'assets/6.webp'),
    Product(title: 'Shampoo7', price: '350', img: 'assets/7.jpg'),
    Product(title: 'Shampoo88', price: '350', img: 'assets/8.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title:  
            Container(
              margin: EdgeInsets.only( 
                right: 30.0
              ),
              alignment: Alignment.center,
              child: Image.asset(
              'assets/website-columbia-road-logo-color.webp',
              fit: BoxFit.fill,
              height: 80.0,
              width: 80.0,
        ),
            ),
      ),  
      drawer: new Drawer(),
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
                    fontFamily: 'Bellania',
                    fontSize: 30.0
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30.0),
          Expanded(
             child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Hero(
                          tag: 'product-${item.img}',
                         child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item.img),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Transform.translate(
                          offset: Offset(50, -50),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                            child: Icon(Icons.bookmark_border, size: 25),
                          ),
                        ),
                      ),
                    ),
                  )).toList(),
                  )
          )
        ],
      )
      
      
    );
  }
}