import 'package:flutter/material.dart';

import '../themes/theme.dart';

class AlphabetFilter extends StatelessWidget {
  final String title;

  AlphabetFilter(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        color: darkGreyColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}