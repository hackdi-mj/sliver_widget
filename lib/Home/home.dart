import 'package:flutter/material.dart';
import 'package:sliver/Home/app_bar.dart';
import 'dart:math' as math;
import '../main.dart';
import 'services/fetch.dart';
import 'sliver_grid_1.dart';
import 'sliver_grid_2.dart';
import 'sliver_list_1.dart';
import 'sliver_list_2.dart';
import 'tab_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 5,
            child: NestedScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    // app bar
                    MyAppBar(),
                    // tab bar
                    SliverPersistentHeader(
                      delegate: SliverTabBar(expandedHeight: 70, tabController: tabController),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(
                  controller: tabController,
                  children: [ListPage1(), ListPage2(), GridPage1(), GridPage2(), Fetch()],
                ))));
  }
}
