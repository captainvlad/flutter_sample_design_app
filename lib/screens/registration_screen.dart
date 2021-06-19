import 'package:demoproject/resources/styles.dart';
import 'package:demoproject/resources/used_parts.dart';
import 'package:flutter/material.dart';
import '../resources/strings.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: buildCircles(),
            ),
            const SizedBox(
              height: 76.0,
            ),
            const Text(
              registrationHeader,
              textAlign: TextAlign.center,
              style: regularTextStyle,
            ),
            const SizedBox(
              height: 14.0,
            ),
            const Text(
              registrationDescription,
              style: regularTextStyleSmall,
            ),
            const SizedBox(
              height: 49.0,
            ),
            inputField('Enter your full name'),
            const SizedBox(
              height: 21.0,
            ),
            inputField('Enter email'),
            const SizedBox(
              height: 21.0,
            ),
            inputField('Enter password'),
            const SizedBox(
              height: 21.0,
            ),
            inputField('Confirm password'),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 325,
              height: 62,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/login',
                  );
                },
                child: const Text(
                  registrationButtonText,
                  textAlign: TextAlign.center,
                  style: regularTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 23.0,
            ),
            createHint(
              registrationHints,
            ),
          ],
        ),
      ),
    );
  }
}
