import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Icon_Widget extends StatelessWidget {
  const Icon_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_filled_outlined,
              size: 50,
              color: Colors.blueGrey,
            ),
            FaIcon(
              FontAwesomeIcons.accessibleIcon
            )
          ],
        ),
      ),
    );
  }
}
