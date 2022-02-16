import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test_Johi extends StatelessWidget {
  const Test_Johi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder:()=> MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test_Johi_Ui(),

    ),
    designSize: const Size(360, 640),
    );

  }
}
class Test_Johi_Ui extends StatefulWidget {
  const Test_Johi_Ui({Key? key}) : super(key: key);


  @override
  _Test_Johi_UiState createState() => _Test_Johi_UiState();
}

class _Test_Johi_UiState extends State<Test_Johi_Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
            padding: EdgeInsets.all(20.0.w),
            height: 303.h,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0.w)),
              elevation: 20.0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 49.w,
                    margin: EdgeInsets.only(
                      bottom: 20.w,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff8b1925),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0.w),
                            topRight: Radius.circular(20.0.w))),
                    child: Text(
                      "Delete Mode",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.w),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    alignment: Alignment.center,
                    child: Text(
                      "Are you Sure you want to delete \nthe mode 'HomeWork?'",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.w),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.h),
                    alignment: Alignment.center,
                    child: Text(
                      "You will not be able to undo this action.",
                      style: TextStyle(
                          color: Color(0xff8b1925),
                          fontWeight: FontWeight.normal,
                          fontSize: 18.w),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Stack(
                      children:[
                        Container(
                          alignment: Alignment.center,
                          height: 55.h,
                          margin: EdgeInsets.only(
                            top: 54.w,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0.w),
                                  bottomRight: Radius.circular(20.0.w))),

                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.w, left: 15.w, top: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 120.w,
                                  height: 40.h,
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
                                        color: Color(0xff23bde4), fontSize: 18.w),
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
                                  width: 120.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xff8b1925),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "DELETE",
                                    style: TextStyle(color: Colors.white, fontSize: 18.w),
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
                        ),]
                  )
                ],
              ),
            ),
          ),
      ),

    );
  }
}

