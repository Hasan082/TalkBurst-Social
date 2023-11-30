import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:talkbrust/application/them_manager.dart';
import 'package:talkbrust/views/auth/signup_screen.dart';
import 'package:talkbrust/views/auth/welcome.dart';


class TalkBrust extends StatelessWidget {
  const TalkBrust({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'TalkBurst',
      theme: ThemeManager.getAppTheme(),
      home: const WelcomeScreen(),
    );
  }
}