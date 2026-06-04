import 'package:app108/nextt.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {




  TextEditingController _name = TextEditingController();

  String msg = "Wellcome to ";

  String nn = "ALI";




  void subm(){
    setState(() {
      msg = "Wellcome to ${_name.text} ";
    });
  }


  void nextts()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextt(nn: msg,))
    );
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Text("Input handler",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                SizedBox(height: 30,),

                TextField(
                  controller: _name,
                  obscureText: true,
                  maxLines: 1,



                  decoration: InputDecoration(
                    labelText: "Enter Your name",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),

                ElevatedButton(onPressed: subm,
                    child: Text("Submit")
                ),

                SizedBox(height: 30,),


                Text(
                  msg
                  ,style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),),



                SizedBox(height: 30,),

                ElevatedButton(onPressed: nextts,
                    child: Text("Go next")
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}



// push
// pushreplacemnt
// pop