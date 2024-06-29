import 'package:flutter/material.dart';

class STF extends StatelessWidget {
  const STF({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage();
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$counter",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
