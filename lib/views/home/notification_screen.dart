import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkbrust/widgets/custom_notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color.fromRGBO(29, 41, 57, 1),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Color.fromRGBO(29, 41, 57, 1),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return index % 2 == 0
                ? const CustomNotificationCard(
                    isFollow: false,
                    name: 'Dennis Nedry',
                    name2: 'Isla Nublar',
                    reason: 'SOC2 compliance report',
                  )
                : const CustomNotificationCard(
                    isFollow: true,
                    name: 'Md Shagor,',
                    username: 'sagor2240',
                  );
          },
        ),
      ),
    );
  }
}
