import 'package:demoproject/resources/strings.dart';
import 'package:demoproject/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:demoproject/resources/used_parts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: buildCircles(),
            ),
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              loginScreenHeader,
              style: regularTextStyle,
            ),
            const SizedBox(
              height: 12.0,
            ),
            SvgPicture.asset('assets/icons/login_screen_image.svg'),
            const SizedBox(
              height: 33.0,
            ),
            inputField('Enter your email'),
            const SizedBox(
              height: 21.0,
            ),
            inputField('Enter password'),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'Forgot password',
              style: regularTextStyleSmall,
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: 325.0,
              height: 62.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/dashboard',
                  );
                },
                child: const Text(
                  loginButtonText,
                  textAlign: TextAlign.center,
                  style: regularTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 29.0,
            ),
            createHint(
              loginHints,
            ),
          ],
        ),
      ),
    );
  }
}
