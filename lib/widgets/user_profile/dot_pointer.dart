import 'package:flutter/material.dart';

class DotPointer extends StatelessWidget {
  const DotPointer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: ShapeDecoration(
        color: const Color(0xFFD0D5DD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
