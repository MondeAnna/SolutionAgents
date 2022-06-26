import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const Manje());
}

class Manje extends StatelessWidget {
  const Manje({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
