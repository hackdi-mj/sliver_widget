import 'package:flutter/material.dart';

import '../main.dart';

class SliverTabBar extends SliverPersistentHeaderDelegate {
  TabController tabController;

  final double expandedHeight;

  SliverTabBar({required this.expandedHeight, required this.tabController});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          Container(
            height: 20,
            color: myColor2,
          ),
          Container(
            // constraints: BoxConstraints.expand(height: 80),

            alignment: Alignment.bottomLeft,
            color: myColor2,
            child: TabBar(controller: tabController, indicatorColor: Colors.black, indicatorWeight: 3, tabs: [
              Tab(
                child: Text(
                  'List 1',
                  style: TextStyle(color: myColor1, fontSize: 12, letterSpacing: 1),
                ),
              ),
              Tab(
                child: Text(
                  'List 2',
                  style: TextStyle(color: myColor1, fontSize: 12, letterSpacing: 1),
                ),
              ),
              Tab(
                child: Text(
                  'Grid 1',
                  style: TextStyle(color: myColor1, fontSize: 12, letterSpacing: 1),
                ),
              ),
              Tab(
                child: Text(
                  'Grid 2',
                  style: TextStyle(color: myColor1, fontSize: 12, letterSpacing: 1),
                ),
              ),
              Tab(
                child: Text(
                  'Fetch Data',
                  style: TextStyle(
                    color: myColor1,
                    fontSize: 12,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
