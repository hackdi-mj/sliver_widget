import 'package:flutter/material.dart';
import 'package:sliver/Register/register.dart';
import 'package:sliver/main.dart';

class MyAppBar extends StatelessWidget {
  Route _loginPage() {
    // routing page
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 250),
      pageBuilder: (context, animation, secondaryAnimation) => Register(), //navigation
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // transition
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 400,
      elevation: 10,
      floating: true,
      pinned: true,
      backgroundColor: myColor2,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "img/flat_mountain.jpg",
          fit: BoxFit.fill,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Container(
                  width: 100,
                  height: 35,
                  child: FloatingActionButton.extended(
                    backgroundColor: myColor1,
                    heroTag: 'login',
                    onPressed: () {
                      Navigator.of(context).push(_loginPage());
                    },
                    label: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 12, letterSpacing: 1, color: myColor2),
                    ),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 10),
              child: Text(
                "Fancy Scrolling",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
