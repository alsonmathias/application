import 'package:flutter/material.dart';

class Navdrawer extends StatefulWidget {
  const Navdrawer({ Key? key }) : super(key: key);

  @override
  _NavdrawerState createState() => _NavdrawerState();
}

class _NavdrawerState extends State<Navdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: const [
          
          UserAccountsDrawerHeader(
            accountName: Text(
              'Alson Mathias',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              
              ),
          accountEmail: Text(
            'alsonmathias1209@gmail.com',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),
          
          currentAccountPicture:
               CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              child: Text(
                "A",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xFF007BFF), // Set your hex color here
                ),
              ),
              
              
            ),
          decoration: BoxDecoration(
           color: Color(0xFF57B9FF),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            // onTap: () {}
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              "About"
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout"
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}