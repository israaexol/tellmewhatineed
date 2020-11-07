import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(  
         mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text( 
            'ABOUT US',
            textAlign: TextAlign.center,
            style: TextStyle(  
              fontSize: 40.0,
              fontFamily: 'PalmBeach',
              color: Colors.white
            ),
          ),
          SizedBox(height: 20.0,),
          Text( 
            'Columbia Road is the leading technology consultancy specializing in digital sales in the Nordics',
                        textAlign: TextAlign.center,
            style: TextStyle(  
              fontSize: 20.0,
              fontFamily: 'ProductSans',
              color: Colors.white
            ),

          ),
          Text( 
            'The company offers its customers holistic sales optimization and automation',
                        textAlign: TextAlign.center,

            style: TextStyle(  
              fontSize: 20.0,
              fontFamily: 'ProductSans',
              color: Colors.white
            ),
          ),
          Text( 
            'from customer acquisition to technical enhancing and building of digital channels, and customer nurturing.',
                        textAlign: TextAlign.center,

            style: TextStyle(  
              fontSize: 20.0,
              fontFamily: 'ProductSans',
              color: Colors.white
            ),),

        ],
      ),
      
    );
  }
}