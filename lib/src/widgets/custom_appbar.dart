import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({Key key, this.pageTitle}) : super(key: key);
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          'W',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 26.0, right: 26.0),
          child: Text(
            pageTitle,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.infinite;
}
