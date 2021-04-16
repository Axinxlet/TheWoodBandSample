import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Special Elite')),
      home: Home(),
    );
  }
}
