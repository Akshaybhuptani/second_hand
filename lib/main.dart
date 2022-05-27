import 'package:flutter/material.dart';
import 'package:second_hand/splash.dart';


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
      home: SplashScreen(),
    );
  }
}
