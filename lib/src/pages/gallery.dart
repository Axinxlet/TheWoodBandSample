import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/widgets/custom_navbar.dart';

class Gallery extends StatelessWidget {
  static String get pageName => 'Band Members';
  const Gallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomNavbar.mainIcon,
        centerTitle: true,
        actions: CustomNavbar.pageName('Gallery'),
      ),
      body: Center(
        child: Text(
          'Gallery',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
