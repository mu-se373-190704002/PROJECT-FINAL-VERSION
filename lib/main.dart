import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/pages/boarding_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingPage(
        widthImage: 290.0,
        heightImage: 290.14,
        imageUrl: 'assets/illustration1_1.png',
        title: 'Introducing Plants',
        subTitle: 'Let\'s get acquainted with\nplants you don\'t know!',
        isBullOne: true,
        isBullTwo: false,
        isBullThree: false,
        textButton: 'NEXT',
        isAction: 'nextOne',
      ),
    );
  }
}
