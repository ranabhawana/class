import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {
    return ListView(
      
      children: <Widget>[
        

         ListTile(
            title: Text('All Documents'),
            trailing: Icon(Icons.picture_as_pdf),
            onTap: () {
             
            },
          ),
          ListTile(
            title: Text('All Meetings'),
            trailing: Icon(Icons.people),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('All Notifications'),
            trailing: Icon(Icons.notifications_none),
            onTap: () {
              
            },

          ),
           ListTile(
            title: Text('All Invoices'),
            trailing: Icon(Icons.filter_4),
            onTap: () {
              
            },
           ),
        ],
      
    );
      
}
    
