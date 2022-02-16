import 'package:flutter/material.dart';

import 'food.dart';

class addItem extends StatelessWidget {
  const addItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: AddItem(),

    );
  }
}
class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("AddItem",style: TextStyle(color: Colors.black),
    ),

      ),
      body: Center(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:  Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 80,
                            margin:EdgeInsets.only(left: 5,right: 20),
                            child: Text("Name",style: TextStyle(color:Colors.black,fontSize: 15),),
                          ),
                          Flexible(child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                              hintText: 'satish',

                            ),
                            keyboardType: TextInputType.streetAddress,
                          )),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 80,
                            margin:EdgeInsets.only(left: 5,right: 20),
                            child: Text("Price",style: TextStyle(color:Colors.black,fontSize: 15),),
                          ),
                          Flexible(child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),

                              labelText: 'Price',
                              hintText: 'Rs.20',

                            ),
                            keyboardType: TextInputType.number,
                          )),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 80,
                            margin:EdgeInsets.only(left: 5,right: 20),
                            child: Text("Quantity",style: TextStyle(color:Colors.black,fontSize: 15),),
                          ),
                          Flexible(child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Quantity',
                              hintText: '2',

                            ),
                            keyboardType: TextInputType.number,
                          )),

                        ],
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.only(top: 20,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 80,
                            margin:EdgeInsets.only(left: 5,right: 20),
                            child: Text("Discount",style: TextStyle(color:Colors.black,fontSize: 15),),
                          ),
                          Flexible(child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Discount',
                              hintText: 'min. 20%',

                            ),
                            keyboardType: TextInputType.number,
                          )),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width:80,
                            margin:EdgeInsets.only(left: 5,right: 20),
                            child: Text("Total",style: TextStyle(color:Colors.black,fontSize: 15),),
                          ),
                          Flexible(child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Total',
                              hintText: 'Rs.200',

                            ),
                            keyboardType: TextInputType.number,
                          )),

                        ],
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 20,),
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(onPressed: () {Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => Food()),
                      );
                      },
                        child: Text("Add",style: TextStyle(color:Colors.blue),),

                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),

        ),




      ),


    );
  }
}

