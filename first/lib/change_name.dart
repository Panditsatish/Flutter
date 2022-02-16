import 'package:first/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'My First Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = "Satish";
  TextEditingController MyController =TextEditingController();

  void _incrementCounter() {
    setState(() {
      if (_counter == "Satish") {
        _counter = "Anmol";
      } else if (_counter == "Anmol") {
        _counter = "Satish";
      }
   /*   else {
        _counter ="Bye"
      }*/
     print(MyController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);

        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '!! Welcome !!',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 45,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                color: Colors.green,
                fontSize: 45,
              ),
            ),
            Image.asset('assets/images/download.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 100,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your Name',
                      labelText:'Name',
                      labelStyle: TextStyle(color: Colors.black),
                      suffix: Icon(Icons.backspace)
                    ),
                    keyboardType: TextInputType.name,
                    obscureText: true,

                    onChanged: (Value){
                      _counter=Value;
                      print(Value);
                    },
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                      labelText: 'Names',
                    ),
                    controller: MyController,
                    keyboardType: TextInputType.streetAddress,
                  ),
                ),
                Text(MyController.text,style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
