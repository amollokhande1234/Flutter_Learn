import 'package:flutter/material.dart';

class CallBackFunction extends StatefulWidget {
  const CallBackFunction({super.key});

  @override
  State<CallBackFunction> createState() => _CallBackFunctionState();
}

class _CallBackFunctionState extends State<CallBackFunction> {
  callBack() {
    print("Button Pressed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Back Function Implementation"),
      ),
      body: Center(
        child: Container(
          child:ElevatedButton(
            child: Text("Hello World",
              style: TextStyle(
                fontSize: 50
              ),),
            onPressed: callBack,
          )
        ),
      ),
    );
  }
}
