import 'package:flutter/material.dart';
class BorderlessCircularAvater extends StatelessWidget {
  final double radius;
  const BorderlessCircularAvater({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: radius,
        backgroundImage: const NetworkImage("https://maruf136.000webhostapp.com/image/maruf.jpeg")
    );
  }
}
