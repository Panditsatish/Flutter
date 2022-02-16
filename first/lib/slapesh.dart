import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';



class LoginWithBuilder extends StatelessWidget {
  @override
         Widget build(BuildContext context) {
          return MaterialApp(
               title: 'Splash Screen',
                   theme: ThemeData(
                     primarySwatch: Colors.green,
                       ),
                home: MyHomePage(),
             debugShowCheckedModeBanner: false,
                );
                  }
       }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MyLoginPage())
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:ClipRRect(

          child: Image.asset('assets/images/download.png'),
            borderRadius: BorderRadius.circular(25),
        ),
    );
  }
}

