import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:talkbrust/views/home/notification_screen.dart';

import 'custom_avater.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          const CustomCircularAvater(),
          const Spacer(),
          Text(
            "Talk Bust",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Get.to(() => const NotificationScreen());
              },
              icon: Image.asset("assets/images/notification.png")),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/appbar_message_icon.png")),
        ],
      ),
    );
  }
}
