// import 'package:flutter/material.dart';
//
//
// class ReusableTextField extends StatelessWidget {
//   final String? hintText;
//   final int? minLines;
//   final int? maxLines;
//   final TextInputType? keyboardType;
//   final Function(String)? onChanged;
//   final TextEditingController? controller;
//   final Icon? prefixIcon;
//   final bool? obscureText;
//
//   const ReusableTextField({
//     Key? key,
//     this.minLines,
//     this.maxLines,
//     this.hintText,
//     this.controller,
//     this.onChanged,
//     this.keyboardType,
//     this.prefixIcon,
//     this.obscureText,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         filled: true,
//         prefixIcon: prefixIcon,
//         fillColor: whiteColor,//
//         hintText: hintText,
//         contentPadding: EdgeInsets.symmetric(
//           vertical: mediumPadding,
//           horizontal: mediumPadding,
//         ),
//         hintStyle: TextStyle(color: inputLabelColor),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius),
//           borderSide: BorderSide.none,
//         ),
//       ),
//       style: TextStyle(color: inputLabelColor),
//       controller: controller,
//       minLines: minLines,
//       maxLines: maxLines ?? 1,
//       keyboardType: keyboardType,
//       obscureText: obscureText ?? false,
//       autofocus: false,
//     );
//   }
// }
