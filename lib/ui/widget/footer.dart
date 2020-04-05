import 'package:client/ui/widget/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF007CBE),
      child: Padding(
        padding: const EdgeInsets.only(left: 65, right: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _startText(),
            SocialNetworks(color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _startText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Code of Conduct",
            style: GoogleFonts.roboto(
              fontSize: 16,
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
          ),
          Text(
            "Flutter and the related logo are trademarks of Google LLC.\nFlutter Russia is not affiliated with or otherwise sponsored by Google LLC.",
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
