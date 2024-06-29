import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Container(
                width: 232,
                height: 32,
                child: Icon(
                  FontAwesomeIcons.amazon,
                  size: 54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
