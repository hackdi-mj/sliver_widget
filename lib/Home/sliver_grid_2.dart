import 'package:flutter/material.dart';

class GridPage2 extends StatelessWidget {
  const GridPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, physics: BouncingScrollPhysics(), slivers: [
      SliverGrid(
        // special widget
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          // column spacing
          mainAxisSpacing: 10.0,
          // row spacing
          crossAxisSpacing: 20.0,
          childAspectRatio: 1.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                child: Card(
                  elevation: 10,
                  color: Colors.cyan[100 * (index % 9)],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text('List Color $index'),
                  ),
                ),
              ),
            );
          },
          childCount: 20,
        ),
      ),
    ]);
  }
}
