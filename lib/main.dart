import 'package:flutter/material.dart';
import 'package:learning_flutter/Calculator.dart';
import 'package:learning_flutter/CustomeWidget.dart';
import 'package:learning_flutter/Stack.dart';
import 'package:learning_flutter/Widgets/rounded_button.dart';
import 'package:learning_flutter/callBackFunction.dart';
import 'package:learning_flutter/grid.dart';
import 'package:learning_flutter/login_page.dart';
import 'package:learning_flutter/wrap_widget.dart';
import 'package:learning_flutter/Widgets/IconsWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'date.dart';
import 'datepeacker.dart';
import 'package:learning_flutter/Widgets/Positioned.dart';
import 'package:learning_flutter/Widgets/StatefulWidget.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Calculator(),
    );
  }
}
