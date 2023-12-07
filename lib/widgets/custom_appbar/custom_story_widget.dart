import 'package:flutter/material.dart';

import 'custom_avater.dart';

class CustomStoryWidget extends StatelessWidget {
  const CustomStoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                "https://maruf136.000webhostapp.com/image/maruf.jpeg",
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover)),
                        Opacity(
                          opacity: 0.3, // Adjust the opacity level as needed
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black),
                            width: 120,
                            height: 120,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CustomCircularAvater(
                            radius: 13,
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Center(
                              child: Image.asset(
                                "assets/images/addw.png",
                                width: 30,
                                height: 30,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
                      child: Text(
                        "You",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              );
            }
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                              "https://maruf136.000webhostapp.com/image/maruf.jpeg",
                              width: 120,
                              height: 120,
                              fit: BoxFit.fill)),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CustomCircularAvater(
                          radius: 13,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
                    child: Text(
                      "Maruf Hasan",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
