import 'package:flutter/material.dart';
class SearchBox extends StatelessWidget {
  final String hintText;
  const SearchBox({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),

      ),
    );
  }
}