import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/widgets/custom_navbar.dart';

class BandMembers extends StatelessWidget {
  static String get pageName => 'Band Members';
  const BandMembers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomNavbar.mainIcon,
          actions: CustomNavbar.pageName(
            'Band Members',
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/band-wood.jpg'),
                  fit: BoxFit.fitWidth)),
        ));
  }
}
