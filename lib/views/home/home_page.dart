import 'package:flutter/material.dart';
import '../../widgets/home_cart/home_card.dart';
import '../../widgets/story_widgets/custom_story_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:Column(
        children: [
          const SizedBox(
            height: 165,
            child:CustomStoryWidget(),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder:(context,index){
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: HomeCard(),
                  );
                }

            ),
          ),
        ],
      ),
    );
  }
}
