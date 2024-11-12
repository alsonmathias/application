import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
const CustomAppBar({ super.key });

  @override
  Widget build(BuildContext context){
    return AppBar(
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: const Color(0xFF57B9FF),
      actions: [
        IconButton(
          onPressed: () {},
           icon: const Icon(
            CupertinoIcons.bell,
            color: Color.fromARGB(255, 255, 255, 255),
            ),
           ),
           IconButton(
            onPressed: () {},
             icon:  const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Color.fromARGB(255, 255, 255, 255),
             ),
             ),         
      ],
      title: const Text(
        'Aarc',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
          fontSize: 21.0,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}