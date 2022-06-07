import 'package:flutter/material.dart';
import 'package:projectapp/widget/bottom_navbar.dart';
import 'package:projectapp/widget/cactus_card.dart';

import '../themes/theme.dart';
import 'detail_identify_page.dart';

class CactusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 172,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        greenColor,
                        linearTwo,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -90,
                        right: -40,
                        child: Container(
                          height: 204,
                          width: 204,
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(102),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        right: -40,
                        child: Container(
                          height: 124,
                          width: 124,
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.13),
                            borderRadius: BorderRadius.circular(102),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -12,
                        child: Text(
                          'Cactus',
                          style: TextStyle(
                            fontSize: 67,
                            fontWeight: FontWeight.w900,
                            color: whiteColor.withOpacity(0.2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(23, 41, 23, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              'Cactus',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: whiteColor,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  margin: EdgeInsets.only(top: 172),
                  padding: EdgeInsets.only(
                    top: 55,
                    left: 23,
                    right: 23,
                  ),
                  child: Column(
                    children: [
                      CactusCard('cactus1.png', 'Red Cactus'),
                      SizedBox(
                        height: 35,
                      ),
                      CactusCard('cactus2.png', 'Fat Cactus'),
                      SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailIdentifyPage(
                                  imageUrl: 'circle_cactus.png',
                                  title: 'Circle Cactus',
                                  description:
                                  'The word "cactus" derives, through Latin,\n from the Ancient Greek κάκτος, kaktos,\n a name originally used by Theophrastus\n for a spiny plant whose identity is not certain.\n Cacti occur in a wide range of shapes \nand sizes. Most cacti live in habitats\n subject to at least some drought. ',
                                );
                              },
                            ),
                          );
                        },
                        child: CactusCard('cactus3.png', 'Circle Cactus'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}