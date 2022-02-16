import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(madwsdfv());
}
class madwsdfv extends StatelessWidget {
  const madwsdfv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimation1(),
    );
  }
}
class MyAnimation1 extends StatefulWidget {
  const MyAnimation1({Key? key}) : super(key: key);

  @override
  _MyAnimation1State createState() => _MyAnimation1State();
}

class _MyAnimation1State extends State<MyAnimation1> {
  bool check=false;

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: check?300:500,
            height: check?300:500,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 2000),
              child: Text("asdfghjk",style: TextStyle(color: check?Colors.white:Colors.red),),
              curve: check? Curves.easeInOutBack:Curves.bounceIn,
            ),
          ),
          TextButton(onPressed: (){
            setState(() {
              check=!check;
            });
          }, child: Text("aszdfghj"))
        ],
      ),
    );
  }
}
