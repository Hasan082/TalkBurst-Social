import 'package:flutter/material.dart';

class ProfileDataCount extends StatelessWidget {
  final int totalData;
  final String dataName;

  const ProfileDataCount({
    super.key,
    required this.totalData,
    required this.dataName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          totalData.toString(),
          style: const TextStyle(
            color: Color(0xFF1D2939),
            fontSize: 12,
            //fontFamily: 'Satoshi',
            fontWeight: FontWeight.w500,
            height: 0.12,
            letterSpacing: -0.41,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          dataName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF475467),
            fontSize: 12,
            //fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            height: 0.11,
            letterSpacing: -0.41,
          ),
        ),
      ],
    );
  }
}
