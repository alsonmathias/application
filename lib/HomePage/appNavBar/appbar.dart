import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
const CustomAppBar({ super.key });

  @override
  Widget build(BuildContext context){
    return AppBar(
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 116, 179, 231),
      actions: [
        IconButton(
          onPressed: () {},
           icon: const Icon(
            CupertinoIcons.bell,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
           ),
           IconButton(
            onPressed: () {},
             icon:  const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Color.fromARGB(255, 0, 0, 0),
             ),
             ),         
      ],
      title: const Text(
        'Aarc',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 21.0,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}