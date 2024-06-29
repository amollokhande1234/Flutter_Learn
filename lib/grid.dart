import 'package:flutter/material.dart';

class GridViewLayout extends StatefulWidget {
  const GridViewLayout({super.key});

  @override
  State<GridViewLayout> createState() => _GridViewLayoutState();
}

class _GridViewLayoutState extends State<GridViewLayout> {
  @override
  Widget build(BuildContext context) {
    var colorarr = [Colors.red,
      Colors.black,Colors.blue,Colors.yellow,
      Colors.blueGrey,Colors.redAccent,Colors.orange,
      Colors.pink,Colors.amberAccent,Colors.red,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      // Grid view builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 6,
            crossAxisSpacing: 6,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: colorarr[index],
            );
          },
        itemCount: colorarr.length,
      ),
      // body:GridView.count(
      //     crossAxisCount:2,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(8),
      //           color: Colors.amberAccent,
      //           image: DecorationImage(
      //             image: NetworkImage("https://as1.ftcdn.net/v2/jpg/05/59/43/98/1000_F_559439863_BoLPm1txcZr0OOqA1hs93FnNEPnpmMaH.jpg"),
      //             fit: BoxFit.cover
      //           )
      //       ),
      //
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[1]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[2]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[3]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[4]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[5]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[6]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[7]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[8]),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: colorarr[9]),
      //     ),
      //   ],
      // ),
    );
  }
}
