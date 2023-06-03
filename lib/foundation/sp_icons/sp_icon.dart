import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon({Key? key,
    required this.assetName,
    this.currentIndex,
    this.selectedIndex,
    this.height,
    this.width
  }) : super(key: key);

  final assetName;
  final int? currentIndex;
  final int? selectedIndex;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/$assetName",
        height: height ?? 34,
        width: width ?? 34,
        color: currentIndex == selectedIndex ? Colors.black : Colors.pinkAccent.withOpacity(0.5),
    );
  }
}
