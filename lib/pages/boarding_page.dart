import 'package:flutter/material.dart';
import 'package:projectapp/pages/login_page.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/onboard_bullet.dart';

class BoardingPage extends StatelessWidget {
  final double widthImage;
  final double heightImage;
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool isBullOne;
  final bool isBullTwo;
  final bool isBullThree;
  final String textButton;
  final String isAction;

  BoardingPage({
    required this.widthImage,
    required this.heightImage,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.isBullOne,
    required this.isBullTwo,
    required this.isBullThree,
    required this.textButton,
    required this.isAction,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: widthImage,
              height: heightImage,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: darkColor,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: darkGreyColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnboardBullet(isBullOne),
                SizedBox(
                  width: 9,
                ),
                OnboardBullet(isBullTwo),
                SizedBox(
                  width: 9,
                ),
                OnboardBullet(isBullThree),
              ],
            ),
            SizedBox(
              height: 54,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    (isAction == "nextOne")
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return BoardingPage(
                                  widthImage: 286.0,
                                  heightImage: 277.14,
                                  imageUrl: 'assets/illustration2_2.png',
                                  title: 'Learn Many Plants Species',
                                  subTitle:
                                      'Let\'s learn about the many plant species that\nexist in this world!',
                                  isBullOne: false,
                                  isBullTwo: true,
                                  isBullThree: false,
                                  textButton: 'NEXT',
                                  isAction: 'nextLast',
                                );
                              },
                            ),
                          )
                        : (isAction == "nextLast")
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return BoardingPage(
                                      widthImage: 317.0,
                                      heightImage: 272.14,
                                      imageUrl: 'assets/illustration3_3.png',
                                      title: 'Learn Many Plants Diseases',
                                      subTitle:
                                          'Let\'s learn more about beautiful information and\n discover diseases of plants!',
                                      isBullOne: false,
                                      isBullTwo: false,
                                      isBullThree: true,
                                      textButton: 'LOGIN',
                                      isAction: 'signIn',
                                    );
                                  },
                                ),
                              )
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ),
                              );
                  },
                  color: greenColor,
                  child: Text(
                    textButton,
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
