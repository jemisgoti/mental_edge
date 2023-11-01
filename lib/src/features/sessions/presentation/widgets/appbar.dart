import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mental_edge/src/core/theme/assets.dart';
import 'package:mental_edge/src/core/theme/colors.dart';
import 'package:mental_edge/src/core/theme/dimensions.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: mainMargin),
          child: Image.asset(AssetPath.user),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              AssetPath.arrowLeft,
              width: 12,
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                DateFormat('dd MMM yyyy').format(DateTime.now()),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Image.asset(
              AssetPath.arrowRight,
              width: 12,
              height: 12,
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            width: 60,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: grey),
            child: Center(
              child: Image.asset(
                AssetPath.notificationIcon,
                width: 15,
                height: 15,
              ),
            ),
          ),
          const SizedBox(
            width: mainMargin,
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class SessionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SessionAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60 + mainMargin,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 60,
            margin: const EdgeInsets.only(left: mainMargin),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: grey),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const TitleText('Session info'),
        actions: <Widget>[
          Container(
            width: 60,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: grey),
            child: Center(
              child: Image.asset(
                AssetPath.pencilIcon,
                width: 15,
                height: 15,
              ),
            ),
          ),
          const SizedBox(
            width: mainMargin,
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
