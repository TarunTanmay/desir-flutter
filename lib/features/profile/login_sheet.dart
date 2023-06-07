import 'package:desir/features/profile/otp_login_page.dart';
import 'package:desir/foundation/sp_icons/sp_icon.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/Font.dart';
import '../../foundation/sp_icons/icons_helper.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({Key? key}) : super(key: key);
  final _theme = ThemeManager.currentTheme;
  final _icons = IconsHelper.icons;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: _theme.whitebg,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            height: MediaQuery.of(context).size.height/2,
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SPIcon(assetName: _icons.cart, height: 28, width: 28),
                    // IconButton(
                    //     onPressed: () {
                    //       Get.back();
                    //     },
                    //     icon: Icon(Icons.clear)
                    // )
                  ],
                ),
                SizedBox(height: 30),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Login",
                              style: Font.apply(Colors.black54, FontStyle.medium, FontSize.h6)
                          ),
                          TextSpan(
                              text: " or ",
                              style: Font.apply(Colors.black54, FontStyle.regular, FontSize.h7)
                          ),
                          TextSpan(
                              text: "SignUp",
                              style: Font.apply(Colors.black54, FontStyle.medium, FontSize.h6)
                          ),
                        ]
                    )
                ),

                SizedBox(height: 20),
                Container(
                  height: 48,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6),
                    decoration: InputDecoration(
                      prefix: Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 8, right: 6),
                          child: Text(
                              "+91 |",
                              style: Font.apply(_theme.caption, FontStyle.regular, FontSize.h6)
                          )
                      ),
                      labelText: "Mobile Number",
                      labelStyle: Font.apply(_theme.title, FontStyle.regular, FontSize.h6),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: _theme.caption
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: _theme.caption
                          )
                      ),
                    ),
                  ),
                ),


                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 48,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.black)
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpLoginPage()));
                      },
                      child: Center(child: Text("Continue", style: Font.apply(Colors.white, FontStyle.medium, FontSize.h6)))
                  ),
                ),

                const SizedBox(height: 30),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Having trouble logging in? ",
                              style: Font.apply(_theme.caption, FontStyle.regular, FontSize.h7)
                          ),
                          TextSpan(
                              text: "Get help ",
                              style: Font.apply(Colors.blue.withOpacity(0.8), FontStyle.medium, FontSize.h6)
                          ),
                        ]
                    )
                ),
              ],
            ),
          )
        ],
      );

  }
}
