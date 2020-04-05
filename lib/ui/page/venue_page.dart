import 'dart:ui';

import 'package:client/ui/fr_colors.dart';
import 'package:client/ui/widget/fr_button.dart';
import 'package:client/ui/widget/page_title.dart';
import 'package:client/ui/widget/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Color(0xFFE6FAFF),
      child: _content(),
    );
  }

  Widget _content() {
    return Padding(
      padding: const EdgeInsets.all(65),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitle(title: "Venue"),
          SizedBox(height: 65),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _description(),
                  SizedBox(height: 10),
                  _getDirectionsButton(),
                  SizedBox(height: 12),
                  SocialNetworks(color: FRColors.backgroundColor),
                ],
              ),
              SizedBox(width: 32),
              Container(
                width: 645,
                height: 314,
                color: Colors.deepOrange,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _description() {
    return Container(
      width: 412,
      child: Text(
        "IT-Park Ankudinovka is a new modernized venue, combining a business center, a technopark in the sphere of high technologies, conference facilities and exhibition opportunities",
        style: GoogleFonts.roboto(fontSize: 24, color: Colors.black),
      ),
    );
  }

  Widget _getDirectionsButton() {
    return FRButton(text: "get directions");
  }
}
