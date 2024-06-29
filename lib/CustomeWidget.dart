import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomeWidget extends StatelessWidget {
  const CustomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custome Widget"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: items(),
            ),
            Expanded(
              flex: 5,
              child: contactList(),
            ),
            Expanded(
              flex: 2,
              child: ContainerUi(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.greenAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      )
    );
  }
}
class items extends StatelessWidget {
  const items({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width:100,
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ),),
    );
  }
}

class contactList extends StatelessWidget {
  const contactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: ListTile(
            leading: CircleAvatar(),
            title: Text("Name"),
            subtitle: Text("Mob No"),
            trailing: Icon(Icons.generating_tokens),
          ),
        ),),
    );
  }
}

class ContainerUi extends StatelessWidget {
  const ContainerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueGrey,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            width: 200,
            // height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey,
            ),
          ),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,),
    );
  }
}
