import 'package:desir/common/base_page.dart';
import 'package:desir/features/profile/signup_profile_page.dart';
import 'package:flutter/material.dart';

import '../../common/Font.dart';


class ProfilePage extends BasePage {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  BasePageState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.defaultWidget,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Profile",
              style: Font.apply(theme.heading6, FontStyle.medium, FontSize.h4),
            ),
          ),
          backgroundColor: theme.whitebg,
          elevation: 0,
          centerTitle: false,
        ),

        body: SingleChildScrollView(child: SignUpProfilePage())
    );
  }
}
