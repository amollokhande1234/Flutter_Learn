import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
                Container(
                  color: Colors.blue,
                  width: 200,
                    height: 200,
                ),
              Positioned(
                left: 21,
                right: 21,
                bottom: 21,
                top: 21,
                child: Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
              ),
              Positioned(
                left: 30,
                right: 30,
                bottom: 30,
                top: 30,
                child: Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
