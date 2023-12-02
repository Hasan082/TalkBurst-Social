import 'package:flutter/material.dart';

import '../../widgets/custom_appbar/custom_appbar.dart';
import '../../widgets/custom_appbar/custom_story_widget.dart';
import '../../widgets/custom_appbar/home_card.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child:CustomAppbar(),
      ),

      body: ListView(
        children: [
          CustomStoryWidget(),
          // const SizedBox(
          //   height: 165,
          //   child:
          // ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder:(context,index){
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: HomeCard(),
                );
              }

          ),
        ],
      ),
    );
  }
}