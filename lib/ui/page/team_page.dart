import 'dart:ui';

import 'package:client/ui/widget/page_title.dart';
import 'package:client/ui/widget/person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE6FAFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 99),
            PageTitle(title: "Team"),
            SizedBox(height: 65),
            _coreTeam(),
          ],
        ),
      ),
    );
  }

  Widget _coreTeam() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _coreTeamTitle(),
        GridView.count(
          crossAxisCount: 3,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(
            15,
            (index) => Person(),
          ),
        ),
      ],
    );
  }

  Widget _coreTeamTitle() {
    return Text(
      "Core Team",
      style: GoogleFonts.roboto(
        fontSize: 36,
        fontFeatures: [FontFeature.disable("liga")],
        color: Color(0xFF363F4E),
      ),
    );
  }
}
