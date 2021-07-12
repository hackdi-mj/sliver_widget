import 'package:flutter/material.dart';
import 'package:sliver/Home/home.dart';
import 'package:sliver/main.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController ctrlFirstname = TextEditingController();
  TextEditingController ctrlLastname = TextEditingController();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  final GlobalKey<FormState> _formReg = GlobalKey<FormState>();
  bool _obsecurePass = true;

  //toggle function to make the obscure false/true
  void _toggle() {
    setState(() {
      _obsecurePass = !_obsecurePass;
    });
  }
  Route _homePage() {
    // routing builder
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Home(), //navigation
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // transition
        var begin = 0.0;
        var end = 1.0;
        var tween = Tween<double>(begin: begin, end: end).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        ));
        return ScaleTransition(
          scale: tween,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: _formReg,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
              child: Container(
                  child: TextFormField(
                controller: ctrlEmail,
                cursorColor: myColor2,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontFamily: 'PTSerif',
                  fontSize: 12,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: myColor1,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: myColor2),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: myColor2, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: myColor1)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: myColor1)),
                  hintText: 'Email',
                  errorStyle: TextStyle(color: Colors.red, fontSize: 9),
                  labelStyle: TextStyle(
                      fontFamily: 'PTSerif', fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black26),
                ),
                validator: (val) => val!.isEmpty ? '*Enter your email' : null,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
              child: Container(
                  child: TextFormField(
                controller: ctrlPassword,
                cursorColor: myColor2,
                obscureText: _obsecurePass,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                  fontFamily: 'PTSerif',
                  fontSize: 12,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: myColor1,
                  ),
                  suffixIcon: _obsecurePass
                      ? IconButton(
                          icon: Icon(
                            Icons.visibility_off,
                            color: myColor1,
                          ),
                          onPressed: () {
                            _toggle();
                          })
                      : IconButton(
                          icon: Icon(Icons.visibility, color: myColor1),
                          onPressed: () {
                            _toggle();
                          }),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: myColor2),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: myColor2, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: myColor1)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: myColor1)),
                  hintText: 'Password',
                  errorStyle: TextStyle(color: Colors.red, fontSize: 9),
                  labelStyle: TextStyle(
                      fontFamily: 'PTSerif', fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black26),
                ),
                validator: (val) => val!.length <= 0 ? '*Enter your password' : null,
              )),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                child: FloatingActionButton.extended(
                  heroTag: "register",
                  onPressed: () {
                    if (_formReg.currentState!.validate()) {
                      Navigator.of(context).push(_homePage());
                    } else {}
                  },
                  backgroundColor: myColor2,
                  label: Text("SIGN IN"),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            SizedBox(
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
