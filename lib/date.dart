import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date & Time"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 900,
          height: 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // date and time function
                // "Current Time : ${time.hour}:${time.minute}:${time.second} "
                // date Format using intl package
                // "Current Time : ${DateFormat("yMMMMEEEEd").format(time)} ",
                // Date Peaker
                "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "SS Time",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
              ),
              ElevatedButton(onPressed: ()  async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial
                );

                if(pickedTime != null) {
                  print("Selected Time : ${pickedTime.hour}-${pickedTime.minute}");
                }
              }, child: Text("Selected Time ",style: TextStyle(
                fontSize: 32,
                color: Colors.black,
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
