import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MyUser extends StatelessWidget {
  const MyUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DataFromApi(),
    );
  }
}

class DataFromApi extends StatefulWidget {
  const DataFromApi({Key? key}) : super(key: key);

  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {

  Future<List<User>> getUserData() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));


    if (response.statusCode == 200) {
      print(response.statusCode);
      print(json.decode(response.body));
    } else {
      print(response.statusCode);
    }
    var jsonData = jsonDecode(response.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User.fromJson(u);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEmo "),
      ),
      body: Card(
        child: FutureBuilder(
          future: getUserData(),
          builder: (BuildContext context,AsyncSnapshot<List<User>>  snapshot) {
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading.......")));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: ClipOval(
                      child: Image.asset('assets/images/im1.jpeg',width: 50,
                        height: 50,
                        fit: BoxFit.cover,),


                    ),
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].email),
                    trailing: Text(snapshot.data![index].username),

                  );
                },

              );
            }
          },
        ),

      ),


    );
  }
}

class User {

  late String name;
  late String username;
  late String email;


  User(this.name, this.username, this.email,);


  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
  }
}