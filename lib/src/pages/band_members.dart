import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/widgets/custom_appbar.dart';

class BandMembers extends StatelessWidget {
  static String get pageName => 'Band Members';
  const BandMembers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(pageTitle: 'Band Members'),
      body: Center(
        child: Text('LineUp'),
      ),
    );
  }
}
