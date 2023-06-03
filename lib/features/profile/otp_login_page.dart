import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../common/Font.dart';

class OtpLoginPage extends StatefulWidget {
  const OtpLoginPage({Key? key}) : super(key: key);

  @override
  State<OtpLoginPage> createState() => _OtpLoginPageState();
}

class _OtpLoginPageState extends State<OtpLoginPage> {
  final _theme = ThemeManager.currentTheme;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final String contactNumber = "+91 9876543210";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: _theme.whitebg,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),

        backgroundColor: _theme.whitebg,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.05),
                  Text("Verification code",
                      style: Font.apply(_theme.title, FontStyle.medium, FontSize.h2)
                  ),

                  SizedBox(height: 8.0),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "please enter verification code that we have send to ",
                                style: Font.apply(_theme.caption, FontStyle.regular, FontSize.h5)
                            ),
                            TextSpan(
                                text: "$contactNumber",
                                style: Font.apply(Colors.blue.withOpacity(0.8), FontStyle.medium, FontSize.h6)
                            ),

                          ]
                      )
                  ),

                  SizedBox(height: height * 0.1),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: width,
                        child: Pinput(
                          length: 4,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          defaultPinTheme: PinTheme(
                              textStyle: Font.apply(_theme.title, FontStyle.semi_bold, FontSize.h6),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5),
                                      width: 1.0
                                  )
                              )
                          ),
                          focusedPinTheme: PinTheme(
                              textStyle: Font.apply(_theme.title, FontStyle.semi_bold, FontSize.h6),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 1.0
                                  )
                              )
                          ),
                        ),
                      )
                  ),

                  Container(
                      padding: const EdgeInsets.only(top: 30, right: 16, bottom: 16),
                      alignment: Alignment.topRight,
                      child: TextButton(onPressed: (){},
                          child: Text("Resend otp",
                            style: Font.apply(Colors.blue.withOpacity(0.5), FontStyle.medium, FontSize.h6),
                          )
                      )
                  ),

                  Expanded(child: SizedBox()),
                  InkWell(
                      borderRadius: BorderRadius.circular(12.0),
                      onTap: (){},
                      child: Ink(
                          height: 50.0,
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: _theme.title
                          ),
                          child: Center(
                              child: Text("Continue",
                                style: Font.apply(_theme.whitebg, FontStyle.regular, FontSize.h6),
                              )
                          )
                      )),
                ],
              ),
            )
        )
    );
  }
}
