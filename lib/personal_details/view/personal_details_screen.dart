import 'package:flutter/material.dart';

@RoutePage()
class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PersonalDetailsScreen'),
      ),
      body: Center(
        child: Text('PersonalDetailsScreen'),
      ),
    );
  }
}
