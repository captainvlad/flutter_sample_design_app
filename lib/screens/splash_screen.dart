import 'package:demoproject/resources/strings.dart';
import 'package:demoproject/resources/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../resources/used_parts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: buildCircles(),
            ),
            const SizedBox(
              height: 59.0,
            ),
            SvgPicture.asset('assets/icons/welcome_screen_image.svg'),
            const SizedBox(
              height: 45,
            ),
            const Text(
              splashScreenHeader,
              style: regularTextStyle,
            ),
            const SizedBox(
              height: 36.0,
            ),
            const Text(
              splashScreenDesription,
              textAlign: TextAlign.center,
              style: regularTextStyleSmall,
            ),
            const SizedBox(
              height: 92,
            ),
            SizedBox(
              width: 325,
              height: 62,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/registration',
                  );
                },
                child: const Text(
                  splashScreenButtonText,
                  textAlign: TextAlign.center,
                  style: regularTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
