import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/views/auth/login_screen.dart';
import 'package:talkbrust/views/auth/signup_screen.dart';
import 'package:talkbrust/views/dashboard_page.dart';

import '../../widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/logo_light.png"),
              width: 85,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomElevatedBtn(
              onPressed: () {
                Get.to(() => SignUpScreen());
              },
              btnText: 'Create Account',
            ),
            TextButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(() => LoginScreen());
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
