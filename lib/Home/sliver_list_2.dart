import 'package:flutter/material.dart';

class ListPage2 extends StatelessWidget {
  const ListPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, physics: BouncingScrollPhysics(), slivers: [
      SliverList(
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
      SliverFixedExtentList(
        itemExtent: 100.0,
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
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
        }, childCount: 20),
      ),
    ]);
  }
}
