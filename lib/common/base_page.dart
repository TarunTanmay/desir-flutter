
import 'package:flutter/material.dart';

import '../foundation/theme/theme_manager.dart';

class BasePage extends StatefulWidget{
  const BasePage({Key? key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}


class BasePageState<T extends BasePage> extends State<T> {
  final theme = ThemeManager.currentTheme;

  @override
  Widget build(BuildContext context) {
    return context.widget;
  }
}