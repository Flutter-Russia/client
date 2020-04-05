import 'package:client/ui/fr_images.dart';
import 'package:client/ui/page/partners_page.dart';
import 'package:client/ui/page/team_page.dart';
import 'package:client/ui/page/venue_page.dart';
import 'package:client/ui/widget/footer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _body(),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100, right: 45),
        child: FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        TeamPage(),
        PartnersPage(),
        VenuePage(),
        Footer(),
      ],
    );
//    return Person();

//    return Stack(
//      children: <Widget>[
//        _background(),
//        _backgroundPictures(),
////        _bigLogo(),
//      ],
//    );
  }

  Widget _background() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Image.asset(
        FRImages.background,
        width: 1048.5,
        height: 1023,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _backgroundPictures() {
    return Align(
      alignment: Alignment(-1.1, 1.1),
      child: Image.asset(
        FRImages.backgroundPictures,
        width: 753.57,
        height: 887.29,
        fit: BoxFit.cover,
      ),
    );
  }

//  Widget _bigLogo() {
//    return Align(
//      alin,
//      child: Image.asset(
//        FRImages.backgroundPictures,
//        width: 608,
//        height: 912,
//        fit: BoxFit.cover,
//      ),
//    );
//  }
}
