import 'package:flutter/material.dart';

class scrollView extends StatelessWidget {
  const scrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 25, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: Image.asset('assets/images/milk.jpg'),
                ),
                Text("Milk"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: Image.asset('assets/images/fish2.jpg'),
                ),
                Text("Fish"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: Image.asset('assets/images/egg2.jpg'),
                ),
                Text("Egg"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: Image.asset('assets/images/veggie.png'),
                ),
                Text("Veggie"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: Image.asset('assets/images/soup.jpg'),
                ),
                Text("Soup"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
