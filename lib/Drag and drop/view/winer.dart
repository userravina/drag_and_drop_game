import 'package:flutter/material.dart';

class winer extends StatefulWidget {
  const winer({super.key});

  @override
  State<winer> createState() => _winerState();
}

class _winerState extends State<winer> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushNamed(context, 'splash');
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff22a0ae),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/w.jpg",
                  height: 150,
                  width: 150,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
