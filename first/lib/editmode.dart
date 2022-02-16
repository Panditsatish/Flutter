import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main(){
 runApp( EditMode());
}

class EditMode extends StatelessWidget {
  const EditMode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit a Mode',
      home: NewMode(),
    );
  }
}

class NewMode extends StatefulWidget {
  const NewMode({Key? key}) : super(key: key);

  @override
  _NewModeState createState() => _NewModeState();
}

class _NewModeState extends State<NewMode> {
  bool status3 = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Edit a Mode',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: Text(
                        "Mode Name*",
                        style: TextStyle(
                            color: Color(0xff919191),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(25),
                      ],
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        fillColor: Color(0xffdeeffb),
                        filled: true,
                        hintText: 'Enter Mode name',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: Text(
                        "Minutes per token*",
                        style: TextStyle(
                            color: Color(0xff919191),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(25),
                      ],
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        fillColor: Color(0xffdeeffb),
                        filled: true,
                        hintText: 'Enter the number of minutes to earn one token',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 50, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mode Picture',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            Text(
                              'Upload Picture to the right',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Color(0xff9fbed2)),
                          child: ClipOval(
                            child: Image.asset('assets/images/cartoon.jpeg'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 50, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              'Active From:',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                            Container(
                              width: 150,
                              child: TextField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(25),
                                ],
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 2.0, vertical: 5.0),
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                    fillColor: Color(0xffdeeffb),
                                    filled: true,
                                    hintText: 'Choose a date',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    suffixIcon: Icon(
                                      Icons.calendar_today_rounded,
                                      color: Colors.blue,
                                    )),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Active To:',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            Container(
                              width: 150,
                              child: TextField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(25),
                                ],
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 2.0, vertical: 5.0),
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                    fillColor: Color(0xffdeeffb),
                                    filled: true,
                                    hintText: 'Choose a date',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                      color: Colors.blue,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Never expires',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          height:40,
                          child: FlutterSwitch(
                            showOnOff: true,
                            activeTextColor: Colors.white,
                            inactiveTextColor: Colors.black,
                            value: status3,
                            onToggle: (val) {
                              setState(() {
                                status3 = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                                text: 'Advanced Settings',
                                style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap =
                                      () {} /*=> Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()),
                                ),*/
                                ),
                          ),
                        ),
                        Container(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Colors.blue,
                                  size: 35,
                                )))
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        margin: EdgeInsets.only(top: 60),
                        color: Color(0xff21bce4),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                width: 130,
                                height: 40,
                                margin: EdgeInsets.only(top: 30),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff23bde4), width: 2.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      color: Color(0xff23bde4), fontSize: 20),
                                ),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                width: 130,
                                height: 40,
                                margin: EdgeInsets.only(top: 30),
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xff057cc7),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
