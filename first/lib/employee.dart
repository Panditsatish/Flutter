import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

Future<Employee> fetchEmployee() async {
  final response = await http
      .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employee/1'));
  if (response.statusCode == 200) {
    return Employee.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load employee');
  }
}

class Employee {
  late String status;
  late Data data;
  late String message;
  Employee({required this.status, required this.data, required this.message});
  Employee.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    message = json['message'];
  }


}

class Data {
  late int id;
  late String employeeName;
  late int employeeSalary;
  late int employeeAge;
  late String profileImage;

  Data(
      {required this.id,
      required this.employeeName,
      required this.employeeSalary,
      required this.employeeAge,
      required this.profileImage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
    profileImage = json['profile_image'];
  }

}

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details',
      home: employeeDetails(),
    );
  }
}

class employeeDetails extends StatefulWidget {
  const employeeDetails({Key? key}) : super(key: key);

  @override
  _employeeDetailsState createState() => _employeeDetailsState();
}

class _employeeDetailsState extends State<employeeDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: FutureBuilder<Employee>(
            future: fetchEmployee(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final employee = snapshot.data;
                if (employee != null) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 300,
                        height:300,
                        margin: EdgeInsets.only(top: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(350),
                          child: Image.asset(
                              'assets/images/featured-small-circular.jpg'),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Employee_ID :",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text("${employee.data.id}",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                          child: Row(
                            children: [
                              Text(
                                "Employee_Name :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text("${employee.data.employeeName}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                          child: Row(
                            children: [
                              Text(
                                "Salary : ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text("${employee.data.employeeSalary}", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                              ),)],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                          child: Row(
                            children: [
                              Text("Age : ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(" ${employee.data.employeeAge}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),)
                            ],
                          )),
                    ],
                  );
                }
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}