import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FRButton extends StatelessWidget {
  final String text;

  const FRButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-Theme.of(context).buttonTheme.padding.horizontal / 2, 0),
      child: FlatButton(
        child: Text(
          text.toUpperCase(),
          style: GoogleFonts.roboto(
            fontSize: 18,
            letterSpacing: 0.03,
            fontFeatures: [FontFeature.disable("kern")],
            color: Color(0xFF00CBFA),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
