import 'package:flutter/material.dart';

class Rich_text extends StatelessWidget {
  const Rich_text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Rich Text '),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Colors.grey,
                fontSize: 20
            ),
            children:<TextSpan> [
            TextSpan(text: "Hello "),
              TextSpan(text: "World! ", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              )),
              TextSpan(
                text: "Welcome to ",style: TextStyle(),
              ),
              TextSpan(
                text: "FLUTTER ",style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                // fontFamily: 'RobotoMono'

              ),
              )

          ]
        ),
      ),

      // body: Row(
      //   children: [
      //     Text("Hello ",style:  TextStyle(
      //         fontSize: 20,
      //         color:  Colors.grey
      //     ),),
      //     Text("World ", style: TextStyle(
      //       fontSize: 20,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold
      //     ),),
      //   ],
      // ),
    );
  }
}
