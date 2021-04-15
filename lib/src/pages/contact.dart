import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/widgets/custom_navbar.dart';

class Contact extends StatelessWidget {
  static String get pageName => 'Band Members';
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomNavbar.mainIcon,
        centerTitle: true,
        actions: CustomNavbar.pageName('Contact'),
      ),
      body: Center(
        child: Text(
          'Contact',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
