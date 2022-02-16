import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Switch",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom  Switch"),
      ),
      body: Container(
        child: Center(
          child: CustomSwitch(),
        ),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends
State<CustomSwitch> with
    SingleTickerProviderStateMixin{

  Duration _duration = Duration(milliseconds: 370);
  late Animation<Alignment> _animation;
  late AnimationController _animationController;
 bool isChecked=true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: _duration
    );

    _animation = AlignmentTween(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.bounceIn
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child){
        return Container(
          width: 110,
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
          decoration: BoxDecoration(
              color:  isChecked? Colors.blue:Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                    color: isChecked? Colors.blue: Colors.grey,
                    blurRadius: 12,
                    offset: Offset(0, 8)
                )
              ]
          ),
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 8,top: 8),
                      child: Text("ON",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  Container(

                      margin: EdgeInsets.only(right: 9,top: 8),
                      child: Text("OFF",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,)),
                ],
              ),
              Align(
                alignment: _animation.value,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      if(_animationController.isCompleted){
                        _animationController.reverse();
                      }else{
                        _animationController.forward();
                      }
                     isChecked=!isChecked;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),

                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}