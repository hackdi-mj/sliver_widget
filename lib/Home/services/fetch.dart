import 'package:flutter/material.dart';
import 'package:sliver/main.dart';
import 'services.dart';

class Fetch extends StatefulWidget {
  const Fetch({Key? key}) : super(key: key);

  @override
  _FetchState createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  List<User>? user;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    Services.getUser().then((value) {
      setState(() {
        user = value;
        loading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: loading
              ? Container()
              : Container(
                  height: 50,
                  child: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: myColor1,
                      color: myColor2,
                    ),
                  ),
                )),
      SliverFixedExtentList(
        itemExtent: 100.0,
        delegate: SliverChildBuilderDelegate((BuildContext context, i) {
          return FutureBuilder<List<User>>(
            future: Services.getUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Card(
                      elevation: 10,
                      color: Colors.cyan[100 * (i % 9)],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(snapshot.data![i].name),
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Container();
            },
          );
        }, childCount: user == null ? 0 : user!.length),
      ),
    ]);
  }
}

mixin EasyLocalization {}
