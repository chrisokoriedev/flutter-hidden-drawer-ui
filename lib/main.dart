import 'package:flutter/material.dart';

import 'draw_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
