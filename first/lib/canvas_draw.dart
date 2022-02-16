import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CanvasDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'custom toggle',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool toggle = false;

  void setToggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 25, left: 25),
        width: 300,
        height: 40,
        child: GestureDetector(
          onTap: () {
            setToggle();
          },
          child: CustomPaint(
            painter: toggle ? OpenPainter() : OpenPainter1(),
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
    final center = Offset(size.width * 4.85 / 6, size.height * 1.95 / 4);
    final a = Offset(size.width * 1.1 / 6, size.height * .05 / 6);
    final b = Offset(size.width * 5.25 / 6, size.height * 3.9 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius1 = Radius.circular(52);

    var paint2 = Paint()
      ..color = Color(0xff057cc7)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius1), paint2);
    var paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawCircle(center, radius, paint1);

    TextSpan span = TextSpan(
        text: 'ON',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.45 / 6));
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.width * 0.9 / 4, size.height * .58 / 4));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height * 1.75 / 4;
    final center1 = Offset(size.width * 1.5 / 6, size.height * 1.95 / 4);
    final a = Offset(size.width * 1.1 / 6, size.height * .05 / 6);
    final b = Offset(size.width * 5.25 / 6, size.height * 3.9 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius1 = Radius.circular(52);

    var paint2 = Paint()
      ..color = Color(0xff057cc7)
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius1), paint2);
    TextSpan span1 = TextSpan(
        text: 'OFF',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.45 / 6));
    TextPainter tp1 = TextPainter(
        text: span1,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp1.layout();
    tp1.paint(canvas, Offset(size.width * 2.7 / 4, size.height * .58 / 4));

    var paint3 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawCircle(center1, radius, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
