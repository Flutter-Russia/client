import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Person extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const Person({
    Key key,
    @required this.imageUrl,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 422,
      height: 406,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Icon(
              Icons.account_circle,
              size: 240,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Aleksandr Denisov",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w300,
              fontSize: 36,
              color: Color(0xFF363F4E),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Co-Head of Flutter Competency\nat EPAM Systems\nGDG Moscow Organizer",
            style: GoogleFonts.roboto(
              fontSize: 24,
              color: Color(0xFF363F4E),
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
