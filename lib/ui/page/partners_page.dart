import 'dart:ui';

import 'package:client/ui/fr_colors.dart';
import 'package:client/ui/widget/fr_button.dart';
import 'package:client/ui/widget/page_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: _content(),
    );
  }

  Widget _content() {
    return Padding(
      padding: const EdgeInsets.all(65),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitle(title: "Partners"),
          SizedBox(height: 10),
          _becomePartner(),
          SizedBox(height: 40),
          _partnersRow("General Partners", Icons.cast_connected),
          Divider(color: Color(0xFFCFEAF6), height: 150),
          _partnersRow("General Partners", Icons.cast_connected),
          Divider(color: Color(0xFFCFEAF6), height: 150),
          _partnersRow("General Partners", Icons.cast_connected),
        ],
      ),
    );
  }

  Widget _becomePartner() {
    return FRButton(text: "become a partner");
  }

  _partnersRow(String title, IconData icon) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 24,
            color: FRColors.textColor,
          ),
        ),
        ...List.generate(3, (index) => Icon(icon)),
        Container(),
      ],
    );
  }
}
