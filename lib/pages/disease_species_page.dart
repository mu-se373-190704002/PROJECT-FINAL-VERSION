import 'package:flutter/material.dart';
import 'package:projectapp/pages/apple_page.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/alphabet_filter.dart';
import 'package:projectapp/widget/bottom_navbar.dart';
import 'package:projectapp/widget/content_title.dart';

class DiseaseSpeciesPage extends StatelessWidget {
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
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              'Disease Species',
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
                          ContentTitle(
                              'ANTHRACHNOSE DISEASE IN STRAWBERRY', false),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ApplePage();
                                  },
                                ),
                              );
                            },
                            child:
                                ContentTitle('APPLE STORAGE DISEASES', false),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('F', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('FUSARIUM WILD IN BANANA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('H', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('HAZELNUT BRANCH CANCER', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('L', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('LENTILS WILD DISEASE', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('M', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('MIGRANT DISEASE IN GRAINS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('P', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('PEAR PSEUDOMONAS FLOWER BLOCK', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle(
                              'POWDERY MILDEW DISEASE IN CARROT', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('S', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle(
                              'SOIL-ORIGINED FUNGAAL DISEASES IN CLOTHES',
                              false),
                          ContentTitle('W', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle(
                              'WATERMEON BACTERIAL FRUIT STAIN', false),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      /*Column(
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
