import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const Image(
                image: AssetImage("assets/images/logo_light.png"),
                width: 150,
                fit: BoxFit.contain,
              ),
              const Spacer(),
              const CircularProgressIndicator(),
              const SizedBox(height: 15),
              GetBuilder<SplashController>(
                builder: (splashController) {
                  return Text(
                    splashController.versionNumber,
                    style: Theme.of(context).textTheme.titleMedium,
                  );
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
