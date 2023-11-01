import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/assets.dart';
import 'package:mental_edge/src/core/theme/colors.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 15, bottom: 29),
        decoration: BoxDecoration(
          color: cream,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 120,
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: const Padding(
                padding: EdgeInsets.only(left: 16, top: 28, bottom: 28),
                child: Paragrah(
                  'Where there is a human being there is an read more........',
                ),
              ),
            ),
            Positioned(
              top: -15,
              right: 0,
              width: MediaQuery.sizeOf(context).width * 0.4,
              child: Image.asset(
                AssetPath.brainArt,
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: 135,
              ),
            ),
          ],
        ),
      );
}
