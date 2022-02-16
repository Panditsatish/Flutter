import 'package:flutter/material.dart';


class myRow extends StatelessWidget {
  const myRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyRow(title: 'My First Flutter Home Page'),
    );
  }
}

class MyRow extends StatefulWidget {
  final String title;

  const MyRow({Key? key, required this.title}) : super(key: key);

  @override
  _MyRowState createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is Test Class'),
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
             for(var i=0;i<7;i++)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 55,
                          height: 500,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.deepPurple),
                          ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ));
  }
}
