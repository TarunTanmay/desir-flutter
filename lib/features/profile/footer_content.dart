import 'package:desir/foundation/sp_text_button/sp_text_button.dart';
import 'package:flutter/material.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SPTextButton(text: 'FAQs'),
        SPTextButton(text: 'ABOUT US'),
        SPTextButton(text: 'TERMS OF USE'),
        SPTextButton(text: 'PRIVACY POLICY'),
      ],
    );
  }
}
