import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class DisableMode extends StatelessWidget {
  const DisableMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,690),
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DisableModeUi(),
      ),
    );
  }
}

class DisableModeUi extends StatefulWidget {
  const DisableModeUi({Key? key}) : super(key: key);

  @override
  _DisableModeUiState createState() => _DisableModeUiState();
}

class _DisableModeUiState extends State<DisableModeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 20.0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 55,
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                    child: Text(
                      "Disable Mode",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Text(
                      "Are you Sure you want to disable \nthe mode 'HomeWork?'",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    child: Text(
                      "You can enable this mode at any time.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15, top: 20,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 150,
                            height: 40,
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
                                    borderRadius: BorderRadius.circular(20.0))),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xff057cc7),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "DISABLE",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                          ),
                        )
                      ],
                    ),
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
