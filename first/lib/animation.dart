/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
`
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimationScreen(),
    );
  }
}

class AnimationScreen extends StatefulWidget{
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late double currentValue;
  late Animation<double> curveAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
        duration: Duration(seconds: 4),
        vsync: this
    );

    curveAnimation = CurvedAnimation(parent: _animationController, curve: Curves.elasticOut);

    _animationController.addListener((){
      setState(() {
        currentValue = _animationController.value;
      });
    });

    _animationController.repeat();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$currentValue", style: TextStyle(fontSize: 30),),
              SizedBox(height: 60,),
              RotationTransition(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                turns: Tween<double>(begin: 0, end: 1).animate(curveAnimation),
              ),
            ],
          )

        */
/*
            Stack(
        children: <Widget>[
          PositionedTransition(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),
            ),
            rect: RelativeRectTween(begin: RelativeRect.fromLTRB(0, 0, 0, 700),
                end: RelativeRect.fromLTRB(200, 700, 0, 0),).animate(curveAnimation),
          )
        ],
      ),
             */ /*

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.book),
        onPressed: (){
          if(_animationController.isAnimating){
            _animationController.stop();
          }else{
            _animationController.repeat();
          }
        },
      ),

    );
  }
}
*/

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class MeraAnimation extends StatelessWidget {
  const MeraAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Animation',
      home: MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animationCurve;
  late bool change = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animationCurve = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutBack);
    Timer(Duration(seconds: 1), () {
      setState(() {
        change = !change;
      });
    });
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainUi()));
    });

    _animationController.repeat();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            RotationTransition(
                turns: Tween<double>(begin: 0, end: 1).animate(animationCurve),

              child: Container(
                width: 200,
                height: 300,
                color: Colors.pinkAccent,
                alignment: Alignment.center,
                child:  Text("MOBCODER",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 35),),
              ),


            ),*/
            AnimatedCrossFade(
                firstChild: Container(
                  child: Column(
                    children: [
                      Text(
                        "MOBCODER",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Text(
                        "QUIZ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                secondChild: Center(
                  child: Container(


                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AnimatedDefaultTextStyle(
                            textAlign: TextAlign.center,
                            curve: Curves.easeInOutBack,
                            child: Text("MOBCODER"),
                            style: TextStyle(
                                color: change ?  Colors.black: Colors.grey,
                                fontSize: change ? 30:60,
                                fontWeight: change ? FontWeight.bold : FontWeight.bold),
                            duration: const Duration(milliseconds: 900)),
                        AnimatedContainer(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.all(25.00),
                          duration: const Duration(seconds: 10),
                          curve: Curves.easeInOutBack,
                          width: change ?  100:MediaQuery.of(context).size.width*1.2/2 ,
                          height: change ?  100:MediaQuery.of(context).size.height*1.1/3 ,
                          child: Image.asset(
                            'assets/images/mobco.jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        AnimatedDefaultTextStyle(
                            textAlign: TextAlign.center,
                            curve: Curves.easeInOutBack,
                            textHeightBehavior: const TextHeightBehavior(
                              leadingDistribution:
                                  TextLeadingDistribution.proportional,
                            ),
                            child:  Text("${change?'START QUIZ':'GO TO QUIZ'}"),
                            style: TextStyle(
                                color: change ?  Colors.black:Colors.grey ,
                                fontSize: change ? 30 : 60,
                                fontWeight: change
                                    ? FontWeight.bold : FontWeight.bold),
                            duration: Duration(milliseconds: 900)),

                        /*   TextButton(onPressed: (){setState(() {
                  test=!test;
                });
                 }, child: Text("Tab")),*/
                      ],
                    ),
                  ),
                ),
                crossFadeState:  CrossFadeState.showSecond ,
                duration: Duration(seconds: 2))
          ],
        ),
      ),
    );
  }
}
