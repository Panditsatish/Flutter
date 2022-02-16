import 'package:first/enablemode.dart';
import 'package:first/qr_code.dart';
import 'package:first/simpleauth.dart';
import 'package:first/slapesh.dart';
import 'package:first/testwidgets.dart';
import 'package:first/todaytask.dart';
import 'package:first/user.dart';
import 'package:first/yourmicrosoft.dart';
import 'package:flutter/material.dart';
import 'ListEmployee.dart';
import 'Test.dart';
import 'add_auth.dart';
import 'additem.dart';
import 'addtimeslot.dart';
import 'animation.dart';
import 'authenticationmicro.dart';
import 'calender.dart';
import 'canvas_draw.dart';
import 'custum_calender.dart';
import 'cybertruck.dart';
import 'deletemode.dart';
import 'disablemode.dart';
import 'editmode.dart';
import 'edittimeslot.dart';
import 'food.dart';
import 'hashkey.dart';
import 'johi.dart';
import 'literollingswitch.dart';
import 'loader.dart';
import 'login.dart';
import 'change_name.dart';
import 'mylistview.dart';
import 'newmodal.dart';

void main() {
  runApp(MainUi());
}

class MainUi extends StatelessWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life',
      debugShowCheckedModeBanner: false,
      home: AllUi(),
    );
  }
}


class AllUi extends StatefulWidget {
  const AllUi({Key? key}) : super(key: key);

  @override
  _AllUiState createState() => _AllUiState();
}

class _AllUiState extends State<AllUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All UI"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //ContactsExampleApp
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                  /*    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactsExampleApp()));
                   */ },
                    child: Text(
                      "ContactsApp",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AuthenticationMicro()));
                    },
                    child: Text(
                      "AuthenticationMicro",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              //CustomTableCalendar
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CustomTableCalendar()));
                    },
                    child: Text(
                      "CustomTableCalendar",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SimpleAuth()));
                    },
                    child: Text(
                      "simpleAuth",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HashKeyFind()));
                    },
                    child: Text(
                      "HashKeyFind",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddAuth()));
                    },
                    child: Text(
                      "MicroSoftAuth",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text(
                      "Name Change",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => addItem()));
                    },
                    child: Text(
                      "  Add    Items  ",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurpleAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CanvasDraw()));
                    },
                    child: Text(
                      " Canvas Draw ",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.pinkAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cybertruck()));
                    },
                    child: Text(
                      "My First  Ui",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EditMode()));
                    },
                    child: Text(
                      "Edit Mode  UI",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyFood()));
                    },
                    child: Text(
                      " My Food UI ",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepOrange,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Employee()));
                    },
                    child: Text(
                      "Employee List",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orangeAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ToggleButton()));
                    },
                    child: Text(
                      "Custom Toggle",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loader()));
                    },
                    child: Text(
                      "Custom Loader",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Login Page",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DemoList()));
                    },
                    child: Text(
                      "Custom DemoList",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddMode()));
                    },
                    child: Text(
                      "Add A Mode Ui",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyan,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginWithBuilder()));
                    },
                    child: Text(
                      "Login With Builder",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.yellowAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => myRow()));
                    },
                    child: Text(
                      "My Row ",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.yellow,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Grid And Tab",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightGreen,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyUser()));
                    },
                    child: Text(
                      "My User",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightGreen,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyUser()));
                    },
                    child: Text(
                      "My User",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MeraAnimation()));
                    },
                    child: Text(
                      "Animation",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EditSlot()));
                    },
                    child: Text(
                      "EditSlot",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EnableMode()));
                    },
                    child: Text(
                      "EnableMode",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DisableMode()));
                    },
                    child: Text(
                      "DisableMode",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DeleteMode()));
                    },
                    child: Text(
                      "DeleteMode",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddSlot()));
                    },
                    child: Text(
                      "AddSlot",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyanAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Test_Johi()));
                    },
                    child: Text(
                      "TestJohi",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Test_Johi()));
                    },
                    child: Text(
                      "Clock",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyCalender()));
                    },
                    child: Text(
                      "Calender",
                      style: TextStyle(color: Colors.brown),
                    )),
              ),
              Hero(
                tag: 'hi',
                child: Container(
                  margin:
                  EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(25.00),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 12.0,
                            offset: Offset(0, 8))
                      ]),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Test_Widgets()));
                      },
                      child: Text(
                        "Test_WIdgets",
                        style: TextStyle(color: Colors.brown),
                      )),
                ),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ExampleApp()));
                    },
                    child: Text(
                      "QR_Code",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 10, bottom: 50, left: 10, right: 10),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12.0,
                          offset: Offset(0, 8))
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => YourApp()));
                    },
                    child: Text(
                      "MicroSoftUi",
                      style: TextStyle(color: Colors.black),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
