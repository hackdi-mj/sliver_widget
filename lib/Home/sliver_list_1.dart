import 'package:flutter/material.dart';

class ListPage1 extends StatelessWidget {
  const ListPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, physics: BouncingScrollPhysics(), slivers: [
      SliverList(
        delegate: SliverChildListDelegate(
          [
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
      ),
      SliverFixedExtentList(
        itemExtent: 100.0,
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
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
      ),
    ]);
  }
}
