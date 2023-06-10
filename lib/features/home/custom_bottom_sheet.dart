import 'package:desir/foundation/sp_icons/icons_helper.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/Font.dart';

class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({Key? key}) : super(key: key);

  final _theme = ThemeManager.currentTheme;
  final _icons = IconsHelper.icons;

  List sizes = ["S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:  Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Container(
                height: 4,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 221, 221),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),

              const SizedBox(height: 20),
              Row(
                  children: [
                    Text("Size: ", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                    for (int i=0; i<sizes.length;i++)
                      Container(
                        height: 36,
                        width: 36,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8FA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text(sizes[i], style: Font.apply(_theme.title, FontStyle.regular, FontSize.h7))),
                      )
                  ]
              ),

              const SizedBox(height: 20),
              Row(
                  children: [
                    Text("Colors: ", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: const Color(0xFF031C3C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3BA48D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ]
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  Text("Quantity: ", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 6),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F8FA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: (){
                        print("on - click");
                      },
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 18,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  Text(" 01 ", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  const SizedBox(height: 8),

                  Container(
                      margin: const EdgeInsets.only(left: 6, right: 16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: (){
                          print("on + click");
                        },
                        child: const Icon(
                          CupertinoIcons.plus,
                          size: 18,
                          color: Colors.redAccent,
                        ),
                      )
                  )
                ],
              ),

              const SizedBox(height: 16),
              Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Amount", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  Text("₹1200", style: Font.apply(Colors.green, FontStyle.regular, FontSize.h6)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("IGST", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  Text("₹100", style: Font.apply(Colors.green, FontStyle.regular, FontSize.h6)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery charges", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  Text("₹10", style: Font.apply(Colors.green, FontStyle.regular, FontSize.h6)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Coupoun Discount", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                  Text("- ₹10", style: Font.apply(Colors.red, FontStyle.regular, FontSize.h6)),
                ],
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total payable amount", style: Font.apply(_theme.title, FontStyle.medium, FontSize.h5)),
                  Text("₹1300", style: Font.apply(Colors.green, FontStyle.medium, FontSize.h5)),
                ],
              ),

              const SizedBox(height: 30),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(child: Text("Checkout", style: Font.apply(_theme.whitebg, FontStyle.medium, FontSize.h5))),
                ),
              )
            ],
          ),
        )
    );
  }
}
