import 'package:flutter/material.dart';

import '../story_widgets/custom_avater.dart';
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
          const Text("Talk Bust",style: TextStyle(color: Colors.black,fontFamily: 'lobster'),),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Image.asset("assets/images/notification.png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/images/appbar_message_icon.png")),

        ],
      ),
    );
  }
}
