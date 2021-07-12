import 'package:flutter/material.dart';

class GridPage1 extends StatelessWidget {
  const GridPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, physics: BouncingScrollPhysics(), slivers: [
      SliverGrid.count(
        crossAxisCount: 3,
        // column spacing
        mainAxisSpacing: 10.0,
        // row spacing
        crossAxisSpacing: 20.0,
        childAspectRatio: 1.0,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              child: Card(
                elevation: 10,
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Center(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              child: Card(
                elevation: 10,
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Center(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              child: Card(
                elevation: 10,
                color: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Center(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              child: Card(
                elevation: 10,
                color: Colors.yellow,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Center(),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
