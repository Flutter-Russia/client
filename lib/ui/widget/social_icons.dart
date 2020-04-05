import 'package:flutter/material.dart';

class SocialNetworks extends StatelessWidget {
  final Color color;

  const SocialNetworks({
    Key key,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.message,
          size: 20,
          color: color,
        ),
        SizedBox(width: 30),
        Icon(
          Icons.account_balance,
          size: 20,
          color: color,
        ),
        SizedBox(width: 30),
        Icon(
          Icons.cast_connected,
          size: 20,
          color: color,
        ),
        SizedBox(width: 30),
        Icon(
          Icons.four_k,
          size: 20,
          color: color,
        ),
      ],
    );
  }
}
