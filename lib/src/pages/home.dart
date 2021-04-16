import 'package:flutter/material.dart';
import 'package:the_wood_band_sample/src/pages/band_members.dart';
import 'package:the_wood_band_sample/src/pages/contact.dart';
import 'package:the_wood_band_sample/src/pages/gallery.dart';
import 'package:the_wood_band_sample/src/widgets/custom_drawer.dart';
import 'package:the_wood_band_sample/src/widgets/custom_navbar.dart';
import 'package:the_wood_band_sample/src/widgets/testimonials.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool get getLayout => BoxConstraints().maxWidth > 600;

  void _navigateTo({Widget page}) => Navigator.of(context).push(
      MaterialPageRoute(fullscreenDialog: true, builder: (context) => page));

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) return _webView();
      return _mobileView();
    });
  }

  Widget _mobileView() {
    return Scaffold(
      appBar: AppBar(
        title: CustomNavbar.mainIcon,
        centerTitle: true,
        actions: CustomNavbar.pageName('Home'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/wall.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Testimonials(
                  title:
                      '"   Band aa behey gothun\n   meehaku bunelaafa in\n   alhi comment eh   "',
                  by: '- Author one',
                ),
                Testimonials(
                  title: '"   Anehkaaves konmes\n   salhi bas kolheh   "',
                  by: '- Author two',
                ),
              ],
            ),
            SizedBox(height: 140.0),
            Text(
              'The\nWood\nBand',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontFamily: 'Special Elite'),
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(
        onBandMembers: () => _navigateTo(page: BandMembers()),
        onGallery: () => _navigateTo(page: Gallery()),
        onContact: () => _navigateTo(page: Contact()),
      ),
    );
  }

  Widget _webView() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/wall.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'The Wood Band',
                  style: TextStyle(fontSize: 140.0, color: Colors.white),
                ),
                SizedBox(width: 50.0),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Hire Us!'),
                )
              ],
            ),
            SizedBox(height: 120.0),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(opacity: 0, child: _buildActionButtons()),
                  Text(
                    'W',
                    style: TextStyle(color: Colors.white, fontSize: 60.0),
                  ),
                  _buildActionButtons(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              'Band Members',
              style: TextStyle(color: Colors.white),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Gallery',
                style: TextStyle(color: Colors.white),
              )),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Contact',
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
