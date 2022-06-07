import 'package:flutter/material.dart';
import 'package:projectapp/pages/detail_identify_page.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/apple_card.dart';
import 'package:projectapp/widget/bottom_navbar.dart';

class ApplePage extends StatelessWidget {
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
                          'Apple',
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
                              'Apple Storage Diseases',
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailIdentifyPage(
                                  imageUrl: 'disease1.png',
                                  title: 'Black Rot',
                                  description:
                                  '(Botryosphaeria obtuse) overwinters in\ncankers on twigs, branches and trunk,\nas well as on mummified fruit.\nThis often makes apple cultivars which\nretain mummified fruit, such as Gala,\nHoneycrisp, Cortland and Northern Spy more\nsusceptible to infection, as well as\ntrees damaged by winter injury\nor fire blight.',
                                );
                              },
                            ),
                          );
                        },
                        child: AppleCard('disease1.png', 'Black Rot'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      AppleCard('disease2.png', 'Bitter Rot'),
                      SizedBox(
                        height: 35,
                      ),
                      AppleCard('disease3.png', 'Pin-point Scab'),
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
