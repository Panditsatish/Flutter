import 'package:flutter/material.dart';

class ClockUi extends StatelessWidget {
  const ClockUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClockUI(),
    );
  }
}
class MyClockUI extends StatefulWidget {
  const MyClockUI({Key? key}) : super(key: key);

  @override
  _MyClockUIState createState() => _MyClockUIState();
}

class _MyClockUIState extends State<MyClockUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Center(
        child: Container(
          child: Text("Hello Mr. Satish"),
        ) ,
      ),
    ));
  }
}

