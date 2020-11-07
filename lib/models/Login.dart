import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:tellmewhatineed/pages/sanitizerrecomm.dart';
import 'package:tellmewhatineed/pages/similarproducts.dart';


class Login extends StatelessWidget {
    final _controller1 = TextEditingController();
    final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Text( 
            'Sign-In to continue',
            textAlign: TextAlign.center,
            style: TextStyle(  
              fontSize: 30.0,
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
                    SizedBox(height: 15.0),
          Container( 
            child: TextField( 
              controller: _controller1,
              decoration: InputDecoration(
                hintText: 'E-mail or Phone Number',
                hintStyle: TextStyle(color: Colors.white, fontFamily: 'ProductSans', fontSize: 16.0),
                filled: true,
                focusColor: Colors.white,  
                focusedBorder:  OutlineInputBorder(  
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                ),
              ),
                enabledBorder: OutlineInputBorder(  
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                ),

              ),
            ),
          )
          ),
          SizedBox(height: 10.0),
          Container( 
            child: TextField( 
              controller: _controller2,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white, fontFamily: 'ProductSans', fontSize: 16.0),
                focusColor: Colors.white,  
                focusedBorder:  OutlineInputBorder(  
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                ),
              ),
                enabledBorder: OutlineInputBorder(  
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                ),

              ),
            ),
          )
          ),
          SizedBox(height: 10.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   RaisedButton( 
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) =>SanitizerRec()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    child: Text( 
                      'Sign-In',
                      style: 
                      TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',fontWeight: FontWeight.bold),
                    )
                    ,
                  ),
              ]
          ),
                    SizedBox(height: 10.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   GoogleSignInButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(  
                        builder: (context) => SanitizerRec()));
                      }, 
                    )
              ]
          ),

        ]
      ),
      
    );
  }
}