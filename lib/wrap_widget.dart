import 'package:flutter/material.dart';

class Wrap_Widget extends StatelessWidget {
  const Wrap_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body:ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 200,
        ),
        child: SizedBox.shrink(
          // width: 200,
          //   height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Click"),
          ),
        ),
      ),

    );
  }
}
