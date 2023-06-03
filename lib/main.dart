import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/Font.dart';
import 'features/landing/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _theme = ThemeManager.currentTheme;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Desir",
      theme: ThemeData(
          textTheme: TextTheme(
              headline6: TextStyle(
                  fontSize: FontSize.h7.value + 0.5,
                  letterSpacing: 0.15,
                  color: _theme.heading6
              ),
                bodyText1: TextStyle(
                  color: _theme.bg
                )
          )
      ),
      home: const LandingPage(),
    );

    // return GetMaterialApp(
    //   title: "Desir",
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             "assets/images/shopping-cart.png",
    //             height: 200,
    //             width: 200,
    //           ),
    //           const SizedBox(
    //             height: 0,
    //           ),
    //           Text(
    //             "Desir",
    //             style: Font.apply(Colors.black,FontStyle.bold, FontSize.h1),
    //           ),
    //           Text(
    //             "An Attire you were looking for",
    //             style: Font.apply(Colors.pinkAccent, FontStyle.medium, FontSize.h5)
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}