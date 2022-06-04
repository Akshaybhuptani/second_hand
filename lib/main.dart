import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_hand/language.dart';
import 'package:second_hand/utils.dart';
import 'intro.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second-Hand',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Language())));
    return Container(
        color: AppColors.white,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 70,
                      width: 110,
                      child: SvgPicture.asset(
                        ImageConstant.appIcon,
                        fit: BoxFit.cover,
                      )),
                  Text('Second-Hand',
                      style: GoogleFonts.montserrat(
                          color: AppColors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.fontXXLarge,
                          decoration: TextDecoration.none)),
                  Text('But It is Still in Good Condition...',
                      style: GoogleFonts.montserrat(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.fontVSmall,
                          decoration: TextDecoration.none))
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Version Code 1.0',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: AppColors.greay,
                            fontWeight: FontWeight.bold,
                            fontSize: FontSize.fontVSmall,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Developed By Akshay Bhuptani",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: AppColors.greay,
                            fontWeight: FontWeight.bold,
                            fontSize: FontSize.fontVSmall,
                            decoration: TextDecoration.none))
                  ],
                ))
          ],
        ));
  }
}
