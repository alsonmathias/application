import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
const CustomAppBar({ super.key });

  @override
  Widget build(BuildContext context){
    return AppBar(
      iconTheme: IconThemeData(
        color: Theme.of(context).primaryColorLight,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        IconButton(
          onPressed: () {},
           icon: Icon(
            CupertinoIcons.bell,
            color: Theme.of(context).primaryColorLight,
            ),
           ),
           IconButton(
            onPressed: () {},
             icon:  Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Theme.of(context).primaryColorLight,
             ),
             ),
             IconButton(
              onPressed: () {
                
              },
               icon: Icon(
                CupertinoIcons.settings,
                color: Theme.of(context).primaryColorLight,
               )
            ),
      ],
      title: Text(
        'Aarc',
        style: TextStyle(
          color: Theme.of(context).primaryColorLight,
          fontWeight: FontWeight.bold,
          fontSize: 21.0,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}