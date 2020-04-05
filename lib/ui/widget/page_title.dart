import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  final String title;

  const PageTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: GoogleFonts.roboto(
        fontSize: 48,
        fontFeatures: [FontFeature.disable("liga")],
        color: Color(0xFF363F4E),
      ),
    );
  }
}
