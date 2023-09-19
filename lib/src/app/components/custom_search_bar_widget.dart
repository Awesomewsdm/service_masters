import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for services...',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}



// 🤸‍♂️ Yay Flutter devs and enthusiasts, I am thrilled to share that I have began developing an app I been planning for months now. This app will be used to connect people to artisans and home service providers. The projects was given to me by my university lecturer and as the sole developer of this app, I am responsible for planning, designing, developing, deploying and maintaining the app.



// This app is targeted at people in the Ashanti Region of Ghana but will be available nationwide in the coming years. 



// There will be be admin, service provider and client app.



// Tech stack:

// - Flutter & Dart.

// - Backend: Firebase Firestore.

// - State management: BLoC and Provider.



// I would be sharing my journey with you. Stay tuned 😉 



// Checkout other apps I have published so far:

// LinkMeUp T & T: https://play.google.com/store/apps/details?id=com.linkmeup.app.ltd

// LuckyMan T & L: https://play.google.com/store/apps/details?id=luckyman.tl.app

