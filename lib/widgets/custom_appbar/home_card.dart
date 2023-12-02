import 'package:flutter/material.dart';

import 'custom_avater.dart';
class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                const CustomCircularAvater(),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hasan",style: TextStyle(fontWeight: FontWeight.w500),),
                    Text("User Name",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15,
                    child: Image.asset("assets/images/notification.png")
                )
              ],
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/page_image.JPG",width: double.infinity,height: 300,fit: BoxFit.fill,),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Image.asset("assets/images/heart.png"),
                const SizedBox(width: 8,),
                Image.asset("assets/images/message.png"),
                const SizedBox(width: 8,),
                const Text("20 comments"),
                const SizedBox(width: 8,),
                const Spacer(),
                Image.asset("assets/images/bookmark.png"),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const CustomCircularAvater(),
                const SizedBox(width: 10,),
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Add comments",
                          border: InputBorder.none
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}