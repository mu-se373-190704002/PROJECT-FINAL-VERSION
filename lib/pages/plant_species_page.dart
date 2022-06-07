import 'package:flutter/material.dart';
import 'package:projectapp/pages/banana_page.dart';
import 'package:projectapp/pages/cactus_page.dart';
import 'package:projectapp/widget/alphabet_filter.dart';
import 'package:projectapp/widget/bottom_navbar.dart';
import 'package:projectapp/widget/content_title.dart';

import '../themes/theme.dart';

class SpeciesPage extends StatelessWidget {
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
                          'Species',
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
                              children: [
                               /* Icon(
                                  Icons.chevron_left,
                                  color: whiteColor,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: whiteColor,
                                  size: 30,
                                ),*/
                              ],
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              'Plant Species',
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ContentTitle('A', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('AVACADO LEAF', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('ANTHEMIS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('B', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('BALLI BABA FLOWER', false),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return BananaPage();
                                  },
                                ),
                              );
                            },
                            child: ContentTitle('BANANA', false),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('BASIL', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('C', true),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CactusPage();
                                  },
                                ),
                              );
                            },
                            child: ContentTitle('CACTUS', false),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CAESALPINIA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CHICORY', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CINNAMOMUM', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CIRSIUM', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CISSUS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CISTUS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('D', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DAHLIA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DAPHNE LEAF', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DIERAMA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DIGITALIS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('E', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('ECHINACEA FLOWER', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('ECHINOPS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('G', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('GINGER', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('GOJI BERRY', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('GYMNEMA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('L', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('LAMIUM ALBUM FLOWER', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('LAVENDER', false),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                     /* Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AlphabetFilter('#'),
                          SizedBox(height: 2),
                          AlphabetFilter('A'),
                          SizedBox(height: 2),
                          AlphabetFilter('B'),
                          SizedBox(height: 2),
                          AlphabetFilter('C'),
                          SizedBox(height: 2),
                          AlphabetFilter('D'),
                          SizedBox(height: 2),
                          AlphabetFilter('E'),
                          SizedBox(height: 2),
                          AlphabetFilter('F'),
                          SizedBox(height: 2),
                          AlphabetFilter('G'),
                          SizedBox(height: 2),
                          AlphabetFilter('H'),
                          SizedBox(height: 2),
                          AlphabetFilter('I'),
                          SizedBox(height: 2),
                          AlphabetFilter('J'),
                          SizedBox(height: 2),
                          AlphabetFilter('K'),
                          SizedBox(height: 2),
                          AlphabetFilter('L'),
                          SizedBox(height: 2),
                          AlphabetFilter('M'),
                          SizedBox(height: 2),
                          AlphabetFilter('N'),
                          SizedBox(height: 2),
                          AlphabetFilter('O'),
                          SizedBox(height: 2),
                          AlphabetFilter('P'),
                          SizedBox(height: 2),
                          AlphabetFilter('Q'),
                          SizedBox(height: 2),
                          AlphabetFilter('R'),
                          SizedBox(height: 2),
                          AlphabetFilter('S'),
                          SizedBox(height: 2),
                          AlphabetFilter('T'),
                          SizedBox(height: 2),
                          AlphabetFilter('U'),
                          SizedBox(height: 2),
                          AlphabetFilter('V'),
                          SizedBox(height: 2),
                          AlphabetFilter('W'),
                          SizedBox(height: 2),
                          AlphabetFilter('X'),
                          SizedBox(height: 2),
                          AlphabetFilter('Y'),
                          SizedBox(height: 2),
                          AlphabetFilter('Z'),
                          SizedBox(height: 2),
                        ],
                      )*/
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