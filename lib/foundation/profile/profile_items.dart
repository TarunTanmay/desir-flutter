import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';

import '../../common/Font.dart';

class ProfileItems extends StatelessWidget {
  ProfileItems({Key? key, this.title, this.subTitle, this.assetName, required this.isLast, this.onTap}) : super(key: key);
  final _theme = ThemeManager.currentTheme;

  final String? title;
  final String? subTitle;
  final Icon? assetName;
  final bool isLast;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: subTitle == null ? 72 : isLast ? 72 : 90,
        child: Column(
          children: [
            ListTile(
              trailing: InkWell(
                child: const Icon(Icons.navigate_next_rounded, size: 30),
                onTap: (){},
              ),
              leading: assetName,
              title: title != null ? Text(title ?? "", style: Font.apply(Colors.black, FontStyle.medium, FontSize.h5), overflow: TextOverflow.ellipsis) : null,
              subtitle: subTitle != null ? Text(subTitle ?? "", style: Font.apply(_theme.caption, FontStyle.regular, FontSize.h6), overflow: TextOverflow.ellipsis) : null,
            ),
            isLast ? Container() : const Divider()
          ],
        ),
      ),
    );
  }
}
