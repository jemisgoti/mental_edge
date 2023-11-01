import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/colors.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/appbar.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/medicines.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/sessions.dart';

class SessionInfo extends StatelessWidget {
  const SessionInfo({required this.sessionData, super.key});
  final SessionData sessionData;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const SessionAppBar(),
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: sessionData.profilePic,
                  child: Image.asset(
                    sessionData.profilePic,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                          tag: sessionData.name,
                          child: TitleText(
                            sessionData.name,
                            size: 24,
                          ),
                        ),
                        Hero(
                          tag: sessionData.issue,
                          child: Paragrah(
                            sessionData.issue,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Hero(
                          tag: sessionData.time,
                          child: Paragrah(
                            sessionData.time,
                            size: 14,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const TitleText('Complaints'),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              runSpacing: 15,
              spacing: 25,
              children: <String>[
                'Fatigued',
                'Irritable',
                'Feeling worry',
                'Sleep problem',
                'Stamachaches',
              ]
                  .map(
                    (String e) => Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        e,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 25,
            ),
            const TitleText('Medicines'),
            const SizedBox(
              height: 15,
            ),
            const Medicines(),
            const SizedBox(
              height: 25,
            ),
            const TitleText('General Information'),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
              child: const Text(
                '''Jason is 21 years old boy showing all symptoms of anxiety disorder. H e takes medicines but no betterment observed.''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  height: 25.3 / 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
}
