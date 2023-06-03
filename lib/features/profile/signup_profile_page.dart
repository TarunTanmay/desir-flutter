import 'package:desir/features/profile/footer_content.dart';
import 'package:desir/features/profile/login_sheet.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/Font.dart';
import '../../foundation/profile/profile_items.dart';

class SignUpProfilePage extends StatelessWidget {
  SignUpProfilePage({Key? key}) : super(key: key);
  final theme = ThemeManager.currentTheme;

  @override
  Widget build(BuildContext context) {
    final double topContainerHeight = (context.height/2) * 2 + 50;

    return Column(
      children: [
        Container(
          height: topContainerHeight,
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: topContainerHeight * .01,
                            color: theme.grayDarkSecondary.withOpacity(0.05),
                          ),

                          Container(
                            height: topContainerHeight * .11,
                            color: theme.whitebg,
                          ),
                        ],
                      ),

                      Positioned(
                        // top: 20,
                        // bottom: 20,
                        // left: 16,
                          child: Container(
                            margin: const EdgeInsets.only(top: 28, left: 16, right: 16, bottom: 16),
                            height: 60,
                            width: 60,
                            child: Card(
                                child: Container(
                                  child: Icon(Icons.person_2_outlined),
                                )
                            ),
                          )
                      ),

                      Positioned(
                          top: 30,
                          left: 90,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(Colors.black)
                              ),
                              onPressed: (){
                                Get.bottomSheet(LoginBottomSheet());
                              },
                              child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 140,
                                  height: 56,
                                  child: Center(child: Text("LOG IN/SIGN UP", style: Font.apply(Colors.white, FontStyle.medium, FontSize.h7)))
                              )
                          )
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),
                  Container(
                      color: theme.whitebg,
                      child: Column(
                        children: [
                          ProfileItems(
                              isLast: false,
                              title: "Cart",
                              subTitle: "Add items in your cart",
                              assetName: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black26,
                                  size: 30
                              ),
                            onTap: () {},
                          ),
                          ProfileItems(
                              isLast: false,
                              title: "Help & Support",
                              subTitle: "Help regarding your recent purchase",
                              assetName: const Icon(
                                  Icons.headset_mic_outlined,
                                  color: Colors.black26,
                                  size: 30
                              )
                          ),
                          ProfileItems(
                              isLast: true,
                              title: "Wishlist",
                              subTitle: "Your most loved style",
                              assetName: const Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.black26,
                                  size: 30
                              )
                          ),
                        ],
                      )
                  ),
                  const SizedBox(height: 15),
                  Container(
                      color: theme.whitebg,
                      child: Column(
                          children: [
                            ProfileItems(
                                isLast: false,
                                title: "Scan for coupon",
                                assetName: const Icon(
                                    Icons.document_scanner_outlined,
                                    color: Colors.black26,
                                    size: 30
                                )
                            ),
                            ProfileItems(
                                isLast: true,
                                title: "Refer & Earn",
                                assetName: const Icon(
                                    Icons.share_outlined,
                                    color: Colors.black26,
                                    size: 30
                                )
                            ),
                          ]
                      )
                  ),
                  const SizedBox(height: 18),
                  const FooterContent(),
                  const SizedBox(height: 40),
                  Text("APP VERSION 1.0.0", style: Font.apply(Colors.black.withOpacity(0.5), FontStyle.medium, FontSize.h7)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
