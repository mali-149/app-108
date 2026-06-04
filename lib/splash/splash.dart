import 'dart:async';

import 'package:app108/splash/onbord.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState(){
    super.initState();
    Timer(Duration (seconds: 4),()
    {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => onbord())
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/image/logo2.png",
            height: 150,
            width: 150,
          )
        ),
      ),
    );
  }
}
