import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/assets.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/empty_screen.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/home_page.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/appbar.dart';
import 'package:mental_edge/src/features/sessions/presentation/widgets/navbar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});
  static const String routeName = '/dashboard';
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int index = 0;
  List<Widget> pages = <Widget>[
    const HomePage(),
    const EmptyScreen(
      title: 'Event Screen',
    ),
    const EmptyScreen(
      title: 'Cart Screen',
    ),
    const EmptyScreen(
      title: 'Message Screen',
    ),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppbar(),
        body: PageView.builder(
          controller: pageController,
          itemCount: pages.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => pages[index],
        ),
        bottomNavigationBar: Navbar(
          iconPath: <String>[
            AssetPath.homeIcon,
            AssetPath.eventIcon,
            AssetPath.bagIcon,
            AssetPath.messageIcon,
          ],
          onTap: (int index) {
            this.index = index;
            pageController.jumpToPage(index);
          },
        ),
      );
}
