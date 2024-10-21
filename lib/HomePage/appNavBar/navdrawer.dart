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
            accountName: Text('Alson Mathias'),
          accountEmail: Text('alsonmathias1209@gmail.com'),
          
          )
        ],
      ),
    );
  }
}