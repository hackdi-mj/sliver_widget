import 'package:flutter/material.dart';
import '../main.dart';
import 'app_bar.dart';
import 'body.dart';


class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          slivers: [
            MyAppBar(),
            SliverToBoxAdapter(
              child: Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,top: 40
                      ),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: myColor2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 50,top: 5),
                      child: Text(
                        "Enter your personal details",
                        style: TextStyle(fontSize: 14, color: Colors.black26),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Body()
          ],
        ),
      );
  }
}