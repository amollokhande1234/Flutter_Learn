import 'package:flutter/material.dart';

class Positioned_Widget extends StatelessWidget {
  const Positioned_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.blue.shade200,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/images/c.jpg"),
            ),
            Positioned(
              top: 420,
              left: 20,
              right: 20,
              child: Container(
                width: 400,
                height: 400,
                child: Image.asset("assets/images/w.jpg"),
              ),
            ),
            Positioned(
              top: 20,
              right: 0,
              left: 32,
              child: Container(
                  // width: MediaQuery.of(context).size.width,
                  // height: 352,
                  width: screenWidth * 0.18,
                  child: Image.asset("assets/images/e.jpg")),
            )
          ],
        ),
      ),
    );
  }
}
