import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_hand/intro.dart';
import 'package:second_hand/screens/language/language_block.dart';
import 'package:second_hand/screens/location/location.dart';
import 'package:second_hand/utils.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  LanguageBlock languageBlock = LanguageBlock();

  @override
  void initState() {
    super.initState();
    print("LanguageFirst");
    languageBlock.selectedLanguage("Gujarati");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: StreamBuilder(
      stream: languageBlock.selectedLng.stream,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Container(
            padding: EdgeInsets.only(top: 50, left: 25, right: 25),
            color: AppColors.orange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose",
                    style: GoogleFonts.montserrat(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.fontXXLarge,
                        decoration: TextDecoration.none)),
                Text("your language",
                    style: GoogleFonts.montserrat(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.fontMedium,
                        decoration: TextDecoration.none)),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          languageBlock.selectedLanguage("English");
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 150,
                            padding: EdgeInsets.all(10),
                            color: AppColors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hello",
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("how are you?",
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontSize: FontSize.fontSmall,
                                        decoration: TextDecoration.none)),
                                Spacer(),
                                Text('English',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                          shape: snapshot.data.toString() == "English"
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: AppColors.appColor,
                                    width: 4.0,
                                  ))
                              : RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                          elevation: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          languageBlock.selectedLanguage("Gujarati");
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 150,
                            padding: EdgeInsets.all(10),
                            color: AppColors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('હેલો',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('કેમ છો?',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontSize: FontSize.fontSmall,
                                        decoration: TextDecoration.none)),
                                Spacer(),
                                Text('ગુજરાતી',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                          shape: snapshot.data.toString() == "Gujarati"
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: AppColors.appColor,
                                    width: 4.0,
                                  ))
                              : RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                          elevation: 5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          languageBlock.selectedLanguage("Hindi");
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 150,
                            padding: EdgeInsets.all(10),
                            color: AppColors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('हेलो',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('कैसे हो आप?',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontSize: FontSize.fontSmall,
                                        decoration: TextDecoration.none)),
                                Spacer(),
                                Text('हिंदी',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                          shape: snapshot.data.toString() == "Hindi"
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: AppColors.appColor,
                                    width: 4.0,
                                  ))
                              : RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                          elevation: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          languageBlock.selectedLanguage("Marathi");
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 150,
                            padding: EdgeInsets.all(10),
                            color: AppColors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('हॅलो',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('तू कसा आहेस?',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontSize: FontSize.fontSmall,
                                        decoration: TextDecoration.none)),
                                Spacer(),
                                Text('मराठी',
                                    style: GoogleFonts.montserrat(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.fontMedium,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                          shape: snapshot.data.toString() == "Marathi"
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: AppColors.appColor,
                                    width: 4.0,
                                  ))
                              : RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                          elevation: 5,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: double.infinity, height: 40),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Location()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            primary: AppColors.white),
                        child: Text(
                          "Countinue",
                          style: GoogleFonts.montserrat(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSize.fontMedium,
                              decoration: TextDecoration.none),
                        )),
                  ),
                )
              ],
            ),
          );
        } else {
          return Center(child: Text('No Language Found'));
        }
      },
    ));
  }
}
