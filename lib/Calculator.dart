import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var oneController = TextEditingController();
  var twoController = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    // var result = null;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue.shade500,
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 243, 149),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: oneController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 243, 149),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: twoController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      var n1 = int.parse(oneController.text.toString());
                      var n2 = int.parse(twoController.text.toString());
                      var sum = n1 + n2;
                      result = '$sum';
                      setState(() {
                        // result = 'The sum of $n1 and $n2 is $sum';
                      });
                    },
                    child: Icon(FontAwesomeIcons.plus),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        var n1 = int.parse(oneController.text.toString());
                        var n2 = int.parse(twoController.text.toString());
                        var sum = n1 - n2;
                        result = '$sum';
                      });
                    },
                    child: Icon(FontAwesomeIcons.minus),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      var n1 = int.parse(oneController.text.toString());
                      var n2 = int.parse(twoController.text.toString());
                      var sum = n1 * n2;
                      result = '$sum';
                      setState(() {});
                    },
                    child: Icon(
                      FontAwesomeIcons.multiply,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      var n1 = int.parse(oneController.text.toString());
                      var n2 = int.parse(twoController.text.toString());
                      var sum = n1 / n2;
                      result = '$sum';
                      setState(() {});
                    },
                    child: Icon(FontAwesomeIcons.divide),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 243, 149),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    result,
                    style: TextStyle(
                      // color: Color.fromARGB(255, 22, 7, 7),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
