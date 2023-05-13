import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';

import '../screens/it3_test_overview_screen.dart';

class It3CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const It3CustomAppBar(
      {super.key,
      this.title = "",
      this.showActionIcon = true,
      this.leading,
      // this.onMenuActionTap,
      this.titleWidget});
  final String title;
  final Widget? titleWidget;
  final Widget? leading;
  final bool showActionIcon;
  // final VoidCallback? onMenuActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mobileScreenPadding, vertical: mobileScreenPadding),
        child: Stack(
          children: [
            Positioned.fill(
                child: titleWidget == null
                    ? Center(
                        child: Text(
                          title,
                          style: appBarTs,
                        ),
                      )
                    : Center(
                        child: titleWidget,
                      )),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ??
                      Transform.translate(
                        offset: const Offset(-15, 0),
                        child: const BackButton(),
                      ),
                  if (showActionIcon)
                    Transform.translate(
                        offset: const Offset(6, -10),
                        child: IconButton(
                          icon: const Icon(
                            Icons.info_outline,
                            size: 30,
                          ),
                          onPressed: () {
                            Get.toNamed(It3TestOverviewScreen.routeName);
                          },
                        ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 70);
}
