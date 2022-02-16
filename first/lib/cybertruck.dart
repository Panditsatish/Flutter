import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class Cybertruck extends StatelessWidget {
  const Cybertruck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Task(),
    );
  }
}

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 25,top: 25,right: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Hello,",style: TextStyle(fontSize: 35,color: Colors.black,),),
                          Icon(Icons.doorbell_outlined),
                        ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25,),
                    child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Esther Howard",style: TextStyle(fontSize: 40,color: Colors.black,),),
                        ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),

                    child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height:40,
                            width:120,
                            padding: EdgeInsets.only(left: 45,top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("To do",style: TextStyle(fontSize: 15,color: Colors.black,),),),
                          Container(
                            height:40,
                            width:120,
                            padding: EdgeInsets.only(left: 25,top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueAccent,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("In progress",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ),
                          Container(
                            height:40,
                            width:120,
                            padding: EdgeInsets.only(left: 45,top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("Done",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ),
                        ]
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),

                            ),

                            color: Colors.blueAccent,
                            margin: EdgeInsets.only(top: 10),

                            child: SizedBox(
                              width: 320,
                              height: 270,
                              child: Padding(padding: const EdgeInsets.all(50.0),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("office",style: TextStyle(fontSize: 35,color: Colors.white,),),
                                          Text("#223",style: TextStyle(fontSize: 25,color: Colors.white,),),
                                        ]
                                    ),

                                    Row(
                                      mainAxisAlignment:MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 15,bottom: 15),
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(left: 45),
                                                child: ClipRRect(
                                                  child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(60),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 25),
                                                child: ClipRRect(
                                                  child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(60),
                                                ),
                                              ),
                                              Container(
                                                child: ClipRRect(
                                                  child: Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(100),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left:120,top: 10),
                                                child: Text(" +3",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),


                                              ),
                                            ],


                                          ),
                                        ),
                                      ],
                                    ),
                                    LinearProgressIndicator(
                                      color: Colors.yellow,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Progress",style: TextStyle(fontSize:25,color: Colors.white,),),
                                            Text("64%",style: TextStyle(fontSize: 25,color: Colors.white,),),
                                          ]
                                      ),
                                    ),



                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),

                            ),

                            color: Colors.white,
                            margin: EdgeInsets.only(top: 15),
                            elevation: 35,
                            child: SizedBox(
                              width: 350,
                              height: 270,
                              child: Padding(padding: const EdgeInsets.all(50.0),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("office",style: TextStyle(fontSize: 35,color: Colors.black,),),
                                          Text("#223",style: TextStyle(fontSize: 25,color: Colors.black,),),
                                        ]
                                    ),

                                    Row(
                                      mainAxisAlignment:MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 10,bottom: 10),
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(left:45),
                                                child: ClipRRect(
                                                  child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(60),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 25),
                                                child: ClipRRect(
                                                  child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(60),
                                                ),
                                              ),
                                              Container(
                                                child: ClipRRect(
                                                  child: Image.asset('assets/images/download.png',width: 50,height: 50,),
                                                  borderRadius: BorderRadius.circular(100),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left:120,top: 10),
                                                child: Text(" +3",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),


                                              ),
                                            ],


                                          ),
                                        ),
                                      ],
                                    ),
                                    LinearProgressIndicator(
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 25),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Progress",style: TextStyle(fontSize: 20,color: Colors.black54,),),
                                            Text("64%",style: TextStyle(fontSize: 20,color: Colors.black54,),),
                                          ]
                                      ),
                                    )



                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),


                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Employees",style: TextStyle(fontSize: 35,color: Colors.black,),),
                          Text("See All",style: TextStyle(fontSize:15,color: Colors.blue,),),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5),
                            child:ClipRRect(
                              child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            child:ClipRRect(
                              child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            child:ClipRRect(
                              child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            child:ClipRRect(
                              child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),
                            child:ClipRRect(
                              child:Image.asset('assets/images/download.png',width: 50,height: 50,),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            child:Icon(Icons.add),
                          ),


                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25,right: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Documents",style: TextStyle(fontSize: 35,color: Colors.black,),),
                          Text("See All",style: TextStyle(fontSize:15,color: Colors.blue,),),
                        ]),
                  ),
                  Container(
                    width: 360,
                    height: 80,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Icon(Icons.doorbell),
                          Text("    Equivalent Purchase.pdf\n \b\b\bDisk/objects/contracts...",style: TextStyle(fontSize: 20,color: Colors.black,),),

                        ]
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 80,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2,
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Icon(Icons.doorbell),
                          Text("    Equivalent Purchase.pdf\n \b\b\bDisk/objects/contracts...",style: TextStyle(fontSize: 20,color: Colors.black,),),

                        ]
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 80,
                    margin: EdgeInsets.only(top: 10,bottom: 20),
                    padding: EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius:2,
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Icon(Icons.doorbell),
                          Text("    Equivalent Purchase.pdf\n \b\b\bDisk/objects/contracts...",style: TextStyle(fontSize: 20,color: Colors.black,),),

                        ]
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),


      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_sharp),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],

        selectedItemColor: Colors.blue,

      ),
    );
  }
}
