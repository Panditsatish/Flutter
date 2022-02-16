import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'food.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyLoginPage(),

    );
  }
}
   class MyLoginPage extends StatefulWidget {
     const MyLoginPage({Key? key}) : super(key: key);

     @override
     _MyLoginPageState createState() => _MyLoginPageState();
   }

   class _MyLoginPageState extends State<MyLoginPage> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Center(
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 ClipRRect(
                   child: Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.only(top: 85,),
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),

                     ),
                     child: Image.asset('assets/images/download.png'),

                   ),

                 ),
                 Container(
                   padding: EdgeInsets.all(20),
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         margin: EdgeInsets.only(top: 40,bottom: 40),
                         child: TextField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             labelText: 'Email',
                             hintText: 'Enter valid mail id as abc@gmail.com',

                           ),
                           keyboardType: TextInputType.emailAddress,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 40),
                         child: TextField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             labelText: 'Password',
                             hintText: 'Enter min. 6 letter password',

                           ),
                           keyboardType: TextInputType.streetAddress,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 40,),
                         padding: EdgeInsets.all(20),
                         child: RaisedButton(onPressed: () {Navigator.pushReplacement(
                           context, MaterialPageRoute(builder: (context) => Food()),
                         );
                         },
                           child: Text("Login",style: TextStyle(color:Colors.blue),),
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

