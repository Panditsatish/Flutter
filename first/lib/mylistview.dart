import 'package:first/ListItem.dart';
import 'package:flutter/material.dart';

class DemoList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyListView(title: 'My First Flutter Home Page'),
    );
  }
}

class MyListView extends StatefulWidget {
  final String title;

  const MyListView({Key? key, required this.title}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return MyListItem();
  }
}
