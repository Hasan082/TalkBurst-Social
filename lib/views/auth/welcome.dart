import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/views/auth/login_screen.dart';
import 'package:talkbrust/views/auth/signup_screen.dart';
import '../../widgets/button/custom_elevated_button.dart';

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
            CustomElevatedBtn(
              onPressed: () {
                Get.to(() => SignUpScreen());
              },
              btnText: 'Create Account',
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

