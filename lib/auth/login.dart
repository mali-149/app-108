import 'package:app108/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../user/home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
void gotohome(){
    Navigator.pushReplacement(
        context,
      MaterialPageRoute(builder: (context) => Navigationbar())
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Center(
         child: Column(
           children: [
             SizedBox(height: 150,),

             Text("Login Screen",style: TextStyle(fontSize: 30),),
             SizedBox(height: 50,),
             TextField(

               decoration: InputDecoration(
                   // hintText: "email",
                 labelText: "Email",
                   suffixIcon: Icon(Icons.email),

                   border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 20,),
             TextField(
               obscureText: true,
               decoration: InputDecoration(
                 suffixIcon: Icon(Icons.lock),
                   prefixIcon: Icon(Icons.lock),
                   border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 50,),
             ElevatedButton(onPressed: gotohome,
                 child: Text("Login"))




           ],
         ),
       ),
     ),
    );
  }
}
