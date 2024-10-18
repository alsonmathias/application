import 'package:appli/HomePage/appNavBar/appbar.dart';
import 'package:appli/HomePage/appNavBar/navdrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Navdrawer(),
      appBar: CustomAppBar(),
      
    );
  }
}