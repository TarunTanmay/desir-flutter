
import 'package:flutter/material.dart';

class Font{
  static apply(Color? color, FontStyle style, FontSize size){
    return TextStyle(color: color, fontWeight: style.value, fontSize: size.value, fontFamily: 'baloo2');
  }
}

enum FontSize{
  h1, h2, h3, h4, h5, h6, h7, h8, h9, h10;
}

enum FontStyle{
  extra_bold, bold, semi_bold, medium, regular
}

extension FontSizes on FontSize{
  double get value{
    switch (this) {
      case FontSize.h1:
        return 28;
      case FontSize.h2:
        return 26;
      case FontSize.h3:
        return 22;
      case FontSize.h4:
        return 20;
      case FontSize.h5:
        return 18;
      case FontSize.h6:
        return 16;
      case FontSize.h7:
        return 14;
      case FontSize.h8:
        return 12;
      case FontSize.h9:
        return 10;
      case FontSize.h10:
        return 8;
    }
  }
}

extension FontStyles on FontStyle{
  FontWeight get value{
    switch (this) {
      case FontStyle.regular:
        return FontWeight.normal;

      case FontStyle.bold:
        return FontWeight.bold;

      case FontStyle.semi_bold:
        return FontWeight.w700;

      case FontStyle.medium:
        return FontWeight.w600;

      case FontStyle.extra_bold:
        return FontWeight.w900;
    }
  }
}