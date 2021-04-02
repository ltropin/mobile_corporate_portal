import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function() onBackPressed;
  static bool isTransparentStatusBar = false;

  const CustomAppBar({
    Key key,
    this.title,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 44,
      elevation: 0,
      brightness: Brightness.light,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.chevron_left),
        onPressed: onBackPressed ??
            () {
              Navigator.of(context).pop();
            },
      ),
      
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(44);
}