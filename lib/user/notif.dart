import 'package:flutter/material.dart';

class notif extends StatefulWidget {
  const notif({super.key});

  @override
  State<notif> createState() => _profileState();
}

class _profileState extends State<notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wellcome to Notification screen",style: TextStyle(fontSize: 30),),
      )

      ,
    );
  }
}
