import 'package:desir/common/Font.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';

class SPTextButton extends StatelessWidget {
  SPTextButton({Key? key, required this.text}) : super(key: key);
  final _theme = ThemeManager.currentTheme;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: InkWell(
          onTap: (){},
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              width: MediaQuery.of(context).size.width,
              child: Text(text, style: Font.apply(_theme.title.withOpacity(0.5), FontStyle.medium, FontSize.h7))
          ),
        )
    );
  }
}
