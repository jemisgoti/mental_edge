import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_edge/src/core/theme/assets.dart';
import 'package:mental_edge/src/core/theme/colors.dart';
import 'package:mental_edge/src/core/theme/dimensions.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/welconme';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void onFirstRun() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    onFirstRun();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(AssetPath.topLines),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(AssetPath.bottomLines),
            ),
            Positioned.fill(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        AssetPath.logo,
                        width: 137,
                        height: 181,
                      ),
                      const SizedBox(
                        height: subMargin * 4,
                      ),
                      const Text(
                        'Mental Edge',
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: subMargin,
                      ),
                      const Text(
                        '''Healthy life is having a healthy mind so build a healthy mind then the healthy body.''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE2E2E2),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: onButtonPress,
                        style: const ButtonStyle(
                          minimumSize:
                              MaterialStatePropertyAll<Size>(Size(250, 55)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(cream),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: mainMargin,
                      ),
                      const Text(
                        'Terms and conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  void onButtonPress() {
    context.go(DashBoard.routeName);
  }
}
