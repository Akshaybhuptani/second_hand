import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_hand/screens/location/location_block.dart';
import 'package:second_hand/utils.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  LocationBlock locationBlock = LocationBlock();

  @override
  void initState() {
    locationBlock.getCities();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
            Text("your City",
                style: GoogleFonts.montserrat(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.fontMedium,
                    decoration: TextDecoration.none)),
            SizedBox(
              height: 25,
            ),
            StreamBuilder(
              stream: locationBlock.citiesList.stream,
              builder: (context, AsyncSnapshot<List<String>> snapShot) {
                if (snapShot.hasData) {
                  return Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.0,
                          childAspectRatio: 2,
                          mainAxisSpacing: 0.0,
                        ),
                        itemCount: snapShot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            child: Center(
                              child: Text(
                                snapShot.data![index].toString(),
                                style: GoogleFonts.montserrat(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: FontSize.fontMedium,
                                    decoration: TextDecoration.none),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


