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
        children: [
          
          UserAccountsDrawerHeader(
            accountName: const Text('Alson Mathias'),
          accountEmail: const Text('alsonmathias1209@gmail.com'),
          
          currentAccountPicture: Transform.translate(
              offset: const Offset(80, 8),
              child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 24.0),
              ),
              
              ),
            ),
          decoration: const BoxDecoration(
           color: Color.fromARGB(255, 116, 179, 231),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            // onTap: () {}
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text(
              "About"
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout"
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}