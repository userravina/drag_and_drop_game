import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Start",style: TextStyle(fontSize: 15,letterSpacing: 1),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
