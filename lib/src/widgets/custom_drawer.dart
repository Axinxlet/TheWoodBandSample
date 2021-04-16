import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    Key key,
    @required this.onBandMembers,
    @required this.onGallery,
    @required this.onContact,
  }) : super(key: key);
  final void Function() onBandMembers;
  final void Function() onGallery;
  final void Function() onContact;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                'The\nWood\nBand',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
          ),
          ListTile(
            title: Text(
              'Band Members',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: onBandMembers,
          ),
          ListTile(
            title: Text(
              'Gallery',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: onGallery,
          ),
          ListTile(
            title: Text(
              'Contact',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: onContact,
          ),
          SizedBox(
            height: 360.0,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Allrights Reserved',
            ),
          ),
        ],
      ),
    );
  }
}
