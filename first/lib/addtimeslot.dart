
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddSlot extends StatelessWidget {
  const AddSlot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddTimeSlot(),
    );
  }
}
class AddTimeSlot extends StatefulWidget {
  const AddTimeSlot({Key? key}) : super(key: key);

  @override
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<AddTimeSlot> with SingleTickerProviderStateMixin{
  TextEditingController timeSlotController=TextEditingController();
  TextEditingController timeSlotFromController=TextEditingController();
  TextEditingController timeSlotToController=TextEditingController();
  String dropdownValue='AM';
  String dropdownValue1='AM';
  bool toggle = false;
  bool checkMon=false;
  bool checkTue=false;
  bool checkWed=false;
  bool checkThu=false;
  bool checkFri=false;
  bool checkSat=false;
  bool checkSun=false;


  void setToggle() {
    setState(() {
      toggle = !toggle;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Add a Time Slot",  style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                      width: MediaQuery.of(context).size.width,
                      child:  RichText(
                        text: TextSpan(
                            text: 'Time Slot Name',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight:FontWeight.normal,
                                      fontSize: 20))
                            ]),
                        /*     textScaleFactor: labelTextScale,
                  maxLines: LabelMaxLine,
                  overflow: Overflow.visible,*/
                        textAlign:TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height:45,
                            width:MediaQuery.of(context).size.width-90,
                            child: TextField(
                              controller: timeSlotController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
                                hintText: 'Enter time slot name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),

                                ),
                                fillColor: Color(0xffdeeffa),
                                filled: true,
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff027cc7)
                              ),
                              child: TextButton(onPressed: (){}, child: Text("?",style: TextStyle(color: Colors.white,fontSize: 20),)))
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.only(left: 15,right: 15,top:35),
                      width: MediaQuery.of(context).size.width,
                      child: Text("Monday",style: TextStyle(color:Color(0xff027cc7),fontSize: 25,fontWeight: FontWeight.bold),),),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,

                                margin: EdgeInsets.only(bottom: 10),
                                child: Text("Active from:",style: TextStyle(color: Colors.black,fontSize: 18),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 45,
                                    child: TextField(
                                      controller: timeSlotFromController,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                                          hintText: '00:00',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2.0)
                                          ),
                                          filled: true,
                                          fillColor: Color(0xffdeeffa)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height:45,
                                    width: 70,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      borderRadius: BorderRadius.circular(1.0),

                                    ),
                                    child:DropdownButton<String>(
                                      value: dropdownValue,
                                      alignment: Alignment.center,
                                      icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.blue,),
                                      iconSize: 35,
                                      items: <String>['AM', 'PM'].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String ? newValue) {
                                        setState(() {
                                          dropdownValue=newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                margin: EdgeInsets.only(left: 20,bottom: 10),

                                child: Text("Active to:",style: TextStyle(color: Colors.black,fontSize: 18),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    margin: EdgeInsets.only(left: 20),
                                    height: 45,
                                    child: TextField(
                                      controller: timeSlotToController,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 13.0),
                                          hintText: '00:00',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2.0)
                                          ),
                                          filled: true,
                                          fillColor: Color(0xffdeeffa)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 70,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black45),
                                        borderRadius: BorderRadius.circular(1.0)
                                    ),
                                    child:DropdownButton<String>(
                                      value: dropdownValue1,
                                      icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.blue,),
                                      iconSize: 35,
                                      elevation: 16,


                                      items: <String>['AM', 'PM'].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String ? newValue) {
                                        setState(() {
                                          dropdownValue1=newValue!;
                                        });
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enable Time Slot for 24 hours",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          Container(

                            width:90,
                            height: 30,
                            child: GestureDetector(
                              onTap: () {
                                setToggle();
                              },
                              child: CustomPaint(
                                painter: toggle ? OpenPainter() : OpenPainter1(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[300],
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top:25,left:15,right:15),
                      height: 2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                      child: Text("Copy to days",style: TextStyle(color: Colors.black54,fontSize: 18),),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('MON',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkMon=!checkMon;
                                  });
                                }, value: checkMon,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('TUE',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkTue=!checkTue;
                                  });
                                }, value: checkTue,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('WED',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkWed=!checkWed;
                                  });
                                }, value: checkWed,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('THU',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkThu=!checkThu;
                                  });
                                }, value: checkThu,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('FRI',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkFri=!checkFri;
                                  });
                                }, value: checkFri,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('SAT',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkSat=!checkSat;
                                  });
                                }, value: checkSat,

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('SUN',style: TextStyle(color: Colors.blue),),
                              Checkbox(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkSun=!checkSun;
                                  });
                                }, value: checkSun,

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: Color(0xff21bce4),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15,top: 140),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 150,
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height * 1.75 / 4;
    final center = Offset(size.width * 4.25 / 6, size.height * 1.95 / 4);
    final a = Offset(size.width * 1.1 / 6, size.height * .05 / 6);
    final b = Offset(size.width * 5.25 / 6, size.height * 3.9 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius1 = Radius.circular(52);

    var paint2 = Paint()
      ..color = Color(0xff057cc7)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius1), paint2);
    var paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;
    canvas.drawCircle(center, radius, paint1);

    TextSpan span = TextSpan(
        text: 'ON',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.5 / 4));
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.width * 1.2 / 4, size.height * 1.1 / 4));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height * 1.75 / 4;
    final center1 = Offset(size.width * 2 / 6, size.height * 1.95 / 4);
    final a = Offset(size.width * 1.1 / 6, size.height * .05 / 6);
    final b = Offset(size.width * 5.25 / 6, size.height * 3.9 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius1 = Radius.circular(52);

    var paint2 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius1), paint2);
    TextSpan span1 = TextSpan(
        text: 'OFF',
        style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
            fontSize: size.width * .5/ 4));
    TextPainter tp1 = TextPainter(
        text: span1,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp1.layout();
    tp1.paint(canvas, Offset(size.width * 2.15 / 4, size.height * 1.15 / 4));

    var paint3 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawCircle(center1, radius, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}