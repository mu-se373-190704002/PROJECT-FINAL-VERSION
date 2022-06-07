import 'package:flutter/material.dart';
import 'package:projectapp/pages/detail_identify_page.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/banana_card.dart';
import 'package:projectapp/widget/bottom_navbar.dart';



class BananaPage extends StatelessWidget {
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
                          'Banana',
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
                              'Banana',
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
                      BananaCard('banana1.png', 'Red Banana'),
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
                                  imageUrl: 'banana2.png',
                                  title: 'Blue Java Banana',
                                  description:
                                  'A banana is an elongated, edible fruit –\n botanically a berry – produced by\n several kinds of large herbaceous flowering \nplants in the genus Musa. In some countries,\n bananas used for cooking may be \ncalled "plantains", distinguishing them from\n dessert bananas. The fruit is variable in size,\n color, and firmness, but is usually elongated \nand curved, with soft flesh rich in \nstarch covered with a rind, which may be\n green, yellow, red, purple, or \nbrown when ripe.',
                                );
                              },
                            ),
                          );
                        },
                        child: BananaCard('banana2.png', 'Blue Java Banana'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      BananaCard('banana3.png', 'Lady Finger Banana'),
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
