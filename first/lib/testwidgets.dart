import 'package:flutter/material.dart';

class Test_Widgets extends StatelessWidget {
  const Test_Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test_Wid(),
    );
  }
}
class Test_Wid extends StatefulWidget {
  const Test_Wid({Key? key}) : super(key: key);

  @override
  _Test_WidState createState() => _Test_WidState();
}

class _Test_WidState extends State<Test_Wid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
