
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            
          ],
        ),
      ),
    );
  }
}