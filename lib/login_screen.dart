import 'dart:ui';

import 'package:flutter/material.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
              Image.asset(
                bgImage,
              height:350,
              fit: BoxFit.fill,
              ),
              
              Container(
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.2,0.9],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent,
                    Colors.white
                  ])
                ),
              )
              
                ],
              ),
              
        
              Center(
                child: Text(appName,style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700),),
              ),
              Center(child: Text(slogan, style: TextStyle(color: Colors.grey),)),
        
              
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 20.0),
                child: Container( 
                  child: Text(' LOGIN  ', style: TextStyle(fontSize: 23,
                  fontWeight: FontWeight.w500,)
                  ,),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF443A047),Colors.white
                      ],                
                    ),
                    border: Border(left: BorderSide(color:Color(0xFF1B5E20),width: 6))
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF443A047))
                    ),
                    prefixIcon: Icon(Icons.email,color: Color(0xFF443A047)),
                    labelText:"EMAIL ADDRESS", labelStyle: TextStyle(color: Color(0xFF443A047),fontSize: 16)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  obscureText: true ,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF443A047))
                    ),
                    prefixIcon: Icon(Icons.lock, color: Color(0xFF443A047)),
                    labelText:"PASSWORD", labelStyle: TextStyle(color: Color(0xFF443A047),fontSize: 16)
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child:
                TextButton(onPressed: (){},
                child: Text('Forgot Password ? ',
                style: TextStyle(color: Colors.black),
                ),
              ),
              
              
              ),
        
              Align(
                alignment: Alignment.center,
                child:
                SizedBox(
                  height: 50,
                  width: 350,
                  child: TextButton(onPressed: (){},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF443A047))),
                  child: Text('SIGN IN ',                  
                  style: TextStyle(color: Colors.white,fontSize: 16),
                  ),                
                 ),
                ),              
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account ?'),
                    TextButton(onPressed: (){},
                 child: Text('Create account',
                 style: TextStyle(color: Color(0xFF443A047)),
                 ),
                 ),
                  ],
                ),
              ),
                    
            ],
          ),
        ),
        
      ),
    );
  }
}