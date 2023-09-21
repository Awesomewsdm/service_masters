import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: tPrimaryColor),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search for services...',
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
