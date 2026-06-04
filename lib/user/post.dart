import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

class Spref extends StatefulWidget {
  const Spref({super.key});

  @override
  State<Spref> createState() => _SprefState();
}

class _SprefState extends State<Spref> {


  String name = "";
  String email = "";
  String rollno = "";
  int cnic = 0;


  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController rollnoC = TextEditingController();
  TextEditingController cnicC = TextEditingController();



  Future<void> saveData() async {

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('name',nameC.text);
    await prefs.setString('email',emailC.text);
    await prefs.setString('rollno',rollnoC.text);
    await prefs.setInt('cnic', int.parse(cnicC.text));

  }


  Future<void> readData() async {

    final prefs = await SharedPreferences.getInstance();

    setState(() {

      name = prefs.getString('name') ?? "";
      email = prefs.getString('email') ?? "";
      rollno = prefs.getString('rollno') ?? "";
      cnic = prefs.getInt('cnic') ?? 0;

    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: nameC,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailC,
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: rollnoC,
                decoration: InputDecoration(
                  labelText: "Enter your Rollno",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: cnicC,
                decoration: InputDecoration(
                  labelText: "Enter your cnic",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(onPressed: saveData,
                      child: Text("Save")
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(onPressed: readData,
                      child: Text("Read")
                  )
                ],
              ),

              SizedBox(height: 50),

              Text("Name : $name"),
              Text("Email : $email"),
              Text("Roll no : $rollno"),
              Text("cnic : $cnic"),


            ],
          ),
        ),
      ),
    );
  }
}
