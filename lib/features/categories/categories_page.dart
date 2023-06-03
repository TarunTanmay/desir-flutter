import 'package:desir/features/profile/login_sheet.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final _theme = ThemeManager.currentTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _theme.secondaryWhite,
        body: SafeArea(
            child: Container()
        )
    );
  }
}
