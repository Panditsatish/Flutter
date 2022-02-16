
import 'package:flutter/material.dart';


class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            color: Colors.white,
            elevation: 8.0,
            child: Container(

              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),

              ),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 35),
                    child: CircularProgressIndicator(
                      value: controller.value,
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
                  Container(
                      margin:const EdgeInsets.only(left: 25),
                      child: const Text("Loading....."))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
