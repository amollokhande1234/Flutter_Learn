import 'package:flutter/material.dart';

class DatePeaker extends StatefulWidget {
  const DatePeaker({super.key});

  @override
  State<DatePeaker> createState() => _DatePeakerState();
}

class _DatePeakerState extends State<DatePeaker> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Date Peacker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2025));
                  if(datePicked != null) {
                    print("Date Selected : ${datePicked.day}-${datePicked.month}-${datePicked.year}");
                  }
                },
                child: Text("Show Time",style: TextStyle(
                  fontSize: 25
                ),)),
             ],
        ),
      ),
    );
  }
}
