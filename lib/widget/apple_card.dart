import 'package:flutter/material.dart';
import 'package:projectapp/themes/theme.dart';

class AppleCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  AppleCard(
    this.imageUrl,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 139,
          width: 139,
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 2,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Image.asset(
            'assets/$imageUrl',
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: darkColor,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
            Text(
              'DESCRIPTION',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: darkGreyColor.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'With the hot temperatures since \nbloom,conditions have been ideal\nfor the development of fungal \npathogens...',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: darkGreyColor,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
