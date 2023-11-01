import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/assets.dart';
import 'package:mental_edge/src/core/theme/colors.dart';
import 'package:mental_edge/src/core/theme/dimensions.dart';
import 'package:mental_edge/src/core/widgets/text_widgets.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/seesion_info.dart';

class UpcomingSession extends StatelessWidget {
  const UpcomingSession({super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: data.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: mainMargin),
        itemBuilder: (BuildContext context, int index) => SessionTile(
          sessionData: data[index],
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
      );
}

class SessionTile extends StatelessWidget {
  const SessionTile({required this.sessionData, super.key});
  final SessionData sessionData;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          debugPrint('asdas');
          Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) =>
                  SessionInfo(sessionData: sessionData),
            ),
          );
        },
        child: Container(
          height: 91,
          padding:
              const EdgeInsets.symmetric(horizontal: subMargin, vertical: 14),
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: <Widget>[
              Hero(
                tag: sessionData.profilePic,
                child: Image.asset(sessionData.profilePic),
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
                          size: 16,
                        ),
                      ),
                      Hero(
                        tag: sessionData.issue,
                        child: Paragrah(
                          sessionData.issue,
                          size: 12,
                        ),
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
              Column(
                children: <Widget>[
                  Transform(
                    transform: Matrix4.translationValues(10, -10, 0),
                    child: Checkbox(
                      value: sessionData.accepted,
                      checkColor: Colors.white,
                      activeColor: primaryColor,
                      side: CheckboxBorder(),
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return primaryColor;
                        } else if (states.contains(MaterialState.disabled)) {
                          return const Color(0xFFDADADA);
                        }
                        return const Color(0xFFDADADA);
                      }),
                      onChanged: (bool? value) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class SessionData {
  SessionData({
    required this.name,
    required this.issue,
    required this.profilePic,
    required this.time,
    this.accepted = false,
  });
  String name;
  String issue;
  String time;
  String profilePic;
  bool accepted;
}

List<SessionData> data = <SessionData>[
  SessionData(
    name: 'Jack Holly',
    issue: '20 Years old , depression',
    profilePic: AssetPath.user1,
    time: '02 sept 2023 , 02:00pm',
    accepted: true,
  ),
  SessionData(
    name: 'Mark Jason',
    issue: '21 Years old , Anxiety disorder',
    profilePic: AssetPath.user2,
    time: '02 sept 2023 , 03:00pm',
  ),
  SessionData(
    name: 'Areena Mike',
    issue: '22 Years old , Anxiety disorder',
    profilePic: AssetPath.user3,
    time: '02 sept 2023 , 04:00pm',
  ),
];

class CheckboxBorder extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(Set<MaterialState> states) =>
      const BorderSide(width: 0, color: Colors.transparent);
}
