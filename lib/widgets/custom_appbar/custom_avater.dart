import 'package:flutter/material.dart';

class CustomCircularAvater extends StatelessWidget {
  const CustomCircularAvater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 19,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: 17,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage("https://maruf136.000webhostapp.com/image/maruf.jpeg"),
        ),
      ),
    );
  }
}