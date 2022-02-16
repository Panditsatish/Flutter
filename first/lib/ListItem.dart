import 'package:flutter/material.dart';


class MyListItem extends StatelessWidget {
  const MyListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     /* appBar: AppBar(
        title: Text('Home Page'),
      ),*/
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
              title: Text("Satish Tiwari"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.access_alarms)),
           ListTile(
              title: Text("Anmol"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.cabin)),
          ListTile(
              title: Text("Riya"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_moderator)),
          ListTile(
              title: Text("Ravi Sir"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_outlined)),
          ListTile(
              title: Text("Suraj"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.account_circle)),
          ListTile(
              title: Text("Satish Tiwari"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.access_alarms)),
          ListTile(
              title: Text("Anmol"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.cabin)),
          ListTile(
              title: Text("Riya"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_moderator)),
          ListTile(
              title: Text("Ravi Sir"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_outlined)),
          ListTile(
              title: Text("Suraj"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.account_circle)),
          ListTile(
              title: Text("Satish Tiwari"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.access_alarms)),
          ListTile(
              title: Text("Anmol"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.cabin)),
          ListTile(
              title: Text("Riya"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_moderator)),
          ListTile(
              title: Text("Ravi Sir"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star),
                  )
                ],
              ),
              leading: Icon(Icons.add_outlined)),
          ListTile(
              title: Text("Suraj"),
              subtitle: Row(
                children: <Widget>[
                  Text('4.5',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(Icons.star_border_purple500_rounded),
                  )
                ],
              ),
              leading: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
