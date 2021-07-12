import 'package:flutter/material.dart';
import 'package:sliver/Register/register.dart';
import 'package:sliver/main.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: myColor2,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "Fancy Scrolling",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              height: 40,
              child: FloatingActionButton.extended(
                heroTag: "register",
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: myColor1,
                icon: Icon(Icons.arrow_back_ios,size: 20,),
                label: Text("BACK",style: TextStyle(fontSize: 12,color: myColor2,letterSpacing: 2),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
