import 'package:desir/features/home/product_preview_page.dart';
import 'package:flutter/material.dart';

import '../../common/Font.dart';
import '../../foundation/sp_icons/icons_helper.dart';
import '../../foundation/theme/theme_manager.dart';

class NewArrivalPage extends StatelessWidget {
  NewArrivalPage({Key? key, required this.img}) : super(key: key);
  String img;
  final _icons = IconsHelper.icons;
  final _theme = ThemeManager.currentTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Container(
            color: const Color.fromARGB(255, 224, 244, 244),
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPreviewPage(img: img)));
                  },
                  child: Image.asset(_icons.getImageFromPath(img), fit: BoxFit.cover, height: 180),
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.favorite_outline_rounded, size: 20, color: Colors.redAccent.shade100),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("De´sir", style: Font.apply(_theme.title.withOpacity(0.8), FontStyle.medium, FontSize.h5)),
              Text("round neck t-shirt", style: Font.apply(_theme.caption, FontStyle.regular, FontSize.h7)),
            ],
          ),
        )
      ],
    );
  }
}
