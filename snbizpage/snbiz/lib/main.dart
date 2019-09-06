import 'package:flutter/material.dart';
import 'meeting.dart' as third;
import 'notification.dart' as second;
import 'profile.dart' as fourth;
import 'home.dart' as first;
import 'menu.dart';




void main() => runApp(new MyApp());



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return MainPageState();
  }

}


class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
    TabController controller;

    @override
    void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4,);

}

  @override

  void dispose(){
    controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurpleAccent,

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.purpleAccent,
                    Colors.deepPurple,
                  ]
                )
              ),

              child: Text("SN Business Solutions\n Pvt. Ltd.\n Taking Business To New Height"),
              
              
              ),

                          CustomizedListTitle(Icons.home, 'Home', (){}),
                          CustomizedListTitle(Icons.notifications_active, 'Notification', (){}),
                          CustomizedListTitle(Icons.people, 'Meeting', (){}),
                          CustomizedListTitle(Icons.filter_4, 'Invoices', (){}),
                          CustomizedListTitle(Icons.filter_4, 'Summary', (){}),
                          CustomizedListTitle(Icons.filter_4, 'Profile', (){}),
                          CustomizedListTitle(Icons.settings, 'Logout', (){}),
                                                      
                                      ],
                                    ),
                                  ),
                                  body: new TabBarView(
                                    controller: controller,
                                    children: <Widget>[
                                      new first.Home(),
                                      new second.Notification(),
                                      new third.Meeting(),
                                      new fourth.Profile(),
                                      
                                    ],
                                  ),
              
                                  bottomNavigationBar: new Material(
                                    color: Colors.deepPurpleAccent,
                                    child: TabBar(
                                      controller: controller,
                                      tabs: <Tab>[
                                        new Tab(icon: new Icon(Icons.home), text:"Home",),
                                        new Tab(icon: new Icon(Icons.camera_alt), text: "Upload",),
                                        new Tab(icon: new Icon(Icons.people), text: "Meeting",),
                                        new Tab(icon: new Icon(Icons.person), text:"Profile",),
              
                                      ],
                                    ),
                                  ),
                            
                            
                                );
                              }
              
              
}
