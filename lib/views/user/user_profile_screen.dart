import 'package:flutter/material.dart';
import 'package:talkbrust/widgets/user_profile/dot_pointer.dart';
import 'package:talkbrust/widgets/user_profile/profile_data_count.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(29, 41, 57, 1),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://maruf136.000webhostapp.com/image/maruf.jpeg"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Md Alhaz Mondal Hredhay',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(29, 41, 57, 1),
                              ),
                            ),
                            Text(
                              '@hredhayxz',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(71, 84, 103, 1),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: 230,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProfileDataCount(
                                    totalData: 59,
                                    dataName: 'Post',
                                  ),
                                  DotPointer(),
                                  ProfileDataCount(
                                    totalData: 125,
                                    dataName: 'Following',
                                  ),
                                  DotPointer(),
                                  ProfileDataCount(
                                    totalData: 850,
                                    dataName: 'Follower',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
