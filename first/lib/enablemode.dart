import 'package:flutter/material.dart';
class EnableMode extends StatelessWidget {
  const EnableMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: EnableModeUi(),
    );
  }
}
class EnableModeUi extends StatefulWidget {
  const EnableModeUi({Key? key}) : super(key: key);

  @override
  _EnableModeUiState createState() => _EnableModeUiState();
}

class _EnableModeUiState extends State<EnableModeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: 350,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            elevation: 20.0,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 20,),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                  ),
                  child:  Text("Enable Mode",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),textAlign: TextAlign.center,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child:  Text("Are you Sure you want to enable \nthe mode 'HomeWork?'",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 23),textAlign: TextAlign.center,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  child:  Text("The mode will be active again.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 23),textAlign: TextAlign.center,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, left: 15,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0,
                                    2.0), // shadow direction: bottom right
                              )
                            ],
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
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0,
                                    2.0), // shadow direction: bottom right
                              )
                            ],
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xff057cc7),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "ENABLE",
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
          ),
        ),
      ),
    );
  }
}
