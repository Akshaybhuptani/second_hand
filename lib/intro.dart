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
        title: 'Area Wise \n Local Notification',
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
          title: 'Set Budget We Will Find For You...!',
          maxLineTitle: 2,
          description: "We will notify you everyday according to your budget.",
          pathImage:ImageConstant.budget_intro ,
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

