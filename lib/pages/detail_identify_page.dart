import 'package:flutter/material.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/bottom_navbar.dart';


class DetailIdentifyPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  DetailIdentifyPage({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 281,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/$imageUrl',
                                width: double.infinity,
                                height: 281,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      Colors.black.withOpacity(0.5),
                                      Colors.transparent
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23, vertical: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: backgroundColor,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 281),
                          padding: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                  fontSize: 27,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: darkColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    description,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: darkGreyColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 240,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
