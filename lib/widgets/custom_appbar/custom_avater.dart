import 'package:flutter/material.dart';

class CustomCircularAvater extends StatefulWidget {
  final double radius;
  const CustomCircularAvater({
    super.key, required this.radius,
  });


  @override
  State<CustomCircularAvater> createState() => _CustomCircularAvaterState();
}

class _CustomCircularAvaterState extends State<CustomCircularAvater> {
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: widget.radius+4,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: widget.radius+2,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: widget.radius,
          backgroundImage: NetworkImage("https://maruf136.000webhostapp.com/image/maruf.jpeg"),
        ),
      ),
    );
  }
}