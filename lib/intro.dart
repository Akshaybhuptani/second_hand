import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:second_hand/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];
  @override
  void initState() {
    super.initState();
    slides.add(
      Slide(
        title: 'Area wise \n Local Notification',
        maxLineTitle: 2,
        description: "Get notified when someone buy or sell in your area..",
        pathImage: ImageConstant.notification_intro,
        backgroundColor: AppColors.orange,
        styleDescription: GoogleFonts.montserrat(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: FontSize.fontMedium,
            decoration: TextDecoration.none),
        styleTitle:  GoogleFonts.montserrat(
            color: AppColors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none)
      ),
    );
    slides.add(
      Slide(
          title: 'Multiple Language Supported',
          maxLineTitle: 2,
          description: "Explore app to understand feature and Functionality in your language",
          pathImage: ImageConstant.language_intro,
          backgroundColor: AppColors.orange,
          styleDescription: GoogleFonts.montserrat(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: FontSize.fontMedium,
              decoration: TextDecoration.none),
          styleTitle:  GoogleFonts.montserrat(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none)
      ),
    );
    slides.add(
      Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "images/photo_ruler.png",
        backgroundColor: const Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: onDonePress,
    );
  }
}

