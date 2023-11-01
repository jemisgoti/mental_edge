import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/dimensions.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/banner.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/sessions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            left: mainMargin,
            right: mainMargin,
            top: 20,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              Text(
                'Hi Dr. Kellen',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Paragrah('You have 4 appoinments today.'),
              SizedBox(
                height: 25,
              ),
              TitleText('Thought of the day'),
              AppBanner(),
              TitleText('Upcoming sessions'),
              UpcomingSession(),
            ],
          ),
        ),
      );
}
