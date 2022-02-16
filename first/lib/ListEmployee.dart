import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Employee.dart';
import 'loader.dart';



class Employee extends StatelessWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Emp_Datail(),
    );
  }
}

class Emp_Datail extends StatefulWidget {
  const Emp_Datail({Key? key}) : super(key: key);

  @override
  _Emp_DatailState createState() => _Emp_DatailState();
}

class _Emp_DatailState extends State<Emp_Datail> {


  Future<List<Data>> getEmployee() async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));

     var jsonData=json.decode(response.body);
    print(jsonData);
      List<Data> data=[];
      for(var u in jsonData['data']){
        Data user=Data.fromJson(u);
        data.add(user);
      }
    print(data.length);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Employee List'),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);

        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
          child: FutureBuilder(
            future: getEmployee(),
            builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
              print(snapshot.data);
              if(snapshot.data==null){
                return Container(
                  child: Center(
                    child: MyStatefulWidget(),
                  ),
                );
              }else
                return ListView.builder(itemCount:snapshot.data!.length,itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(snapshot.data![index].employeeName,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text("Id ${snapshot.data![index].id.toString()}",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                    leading: ClipOval(
                      child: Image.asset('assets/images/im1.jpeg'),

                    ),

                    trailing: Text("AGE : ${snapshot.data![index].employeeAge.toString()}",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),

                  );


                }

                );
              },
          ),
      ),
    );
  }
}


