import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final bool? activeBtn;
  final String btnText;

  const CustomElevatedBtn(
      {super.key,
      required this.onPressed,
      this.activeBtn,
      required this.btnText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: activeBtn == false
              ? const Color.fromRGBO(218, 228, 255, 1)
              : Colors.blue,
        ),
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: activeBtn == false
                ? const Color.fromRGBO(255, 255, 255, 1)
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
