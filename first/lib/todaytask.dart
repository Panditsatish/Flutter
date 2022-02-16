


import 'package:flutter/material.dart';
import 'ListEmployee.dart';
import 'additem.dart';
import 'cybertruck.dart';
import 'change_name.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Guys',
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 75, left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: ClipRect(
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ClipRect(
                      child: Icon(Icons.search_sharp),
                    ),
                  ),
                  Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 195),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.elliptical(15, 25)),
                        child: Image.asset('assets/images/cartoon.jpeg'),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35),
              child: Text(
                "Hi Satish!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35),
              child: Text(
                "Good afternoon",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,left: 35,right: 35),
              height: 45,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(0xfffef0ec),
                  borderRadius: BorderRadius.circular(80)),
              child: Container(
                child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      color: Color(0xfff8c2b2),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    labelColor: Colors.brown,
                    unselectedLabelColor: Color(0xffcfb4ad),
                    tabs: [
                      Tab(
                        text: 'Projects',
                      ),
                      Tab(
                        text: 'Clients',
                      ),
                      Tab(
                        text: 'Schedules',
                      ),
                    ]),
              ),
            ),
            Container(
              height: 450,
              width: 400,
              child: TabBarView(
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                GridView.count(crossAxisCount: 2,
                  children: List.generate(100, (index) {
                    return Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(25),
                            child:ClipOval(child: Image.asset('assets/images/featured-small-circular.jpg',height: 120,),
                            ),
                          ),
                          Text(
                            'Item $index',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    );
                  }),

                ),
                GridView.count(crossAxisCount: 2,
                  children: List.generate(100, (index) {
                    return Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(25),
                            child:ClipOval(child: Image.asset('assets/images/im2.jpg',height: 120,),

                            ),
                          ),
                          Text(
                            'Item $index',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    );
                  }),

                ),
                GridView.count(crossAxisCount: 2,
                  children: List.generate(100, (index) {
                    return Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                            child:ClipOval(child: Image.asset('assets/images/im3.jpg',height: 120,),

                            ),
                          ),
                          Text(
                            'Item $index',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    );
                  }),

                ),


              ]),
            ),
          ],
        ),
      ),


      bottomNavigationBar: Container(
           height: 80,
           margin: EdgeInsets.only(bottom:30,left: 30,right: 35),

           child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: IconTheme(
              data: IconThemeData(color: Colors.transparent),
              child: BottomAppBar(
                shape: CircularNotchedRectangle(),
                color: Color(0xffececff),
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(

                        icon:  Icon(
                          Icons.home_filled,
                          color: Color(0xff7f85f9),
                        ),
                        onPressed: () {
                          },


                      ),
                      IconButton(

                        icon: Icon(
                          Icons.notification_important_sharp,
                          color: Color(0xffcbcffe),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Emp_Datail()),
                          );
                        },
                      ),
                      FloatingActionButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddItem()),
                        );
                      },

                        tooltip: 'Increment',
                        child: Icon(
                          Icons.add,
                          color: Colors.white,size: 25,
                        ),
                        backgroundColor: Color(0xff7f85f9),
                        elevation: 18,

                      ),
                      IconButton(

                        icon: Icon(
                          Icons.mail,
                          color: Color(0xffcbcffe),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage(title: 'Hi satish',)),
                          );
                        },
                      ),
                      IconButton(

                        icon:  Icon(
                          Icons.settings,
                          color: Color(0xffcbcffe),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cybertruck())
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ),
         ),


    );
  }
}
