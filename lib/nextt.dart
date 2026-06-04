import 'package:flutter/material.dart';

class nextt extends StatefulWidget {

  final String nn;


  const nextt({super.key,required this.nn });

  @override
  State<nextt> createState() => _nexttState();
}

class _nexttState extends State<nextt> {

   // String nnn =  widget.nn;


  void nexttback()
  {
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NEXT"),
        backgroundColor: Colors.blue,
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Text(widget.nn),
      //       SizedBox(height: 30,),
      //
      //       ElevatedButton(onPressed: nexttback,
      //           child: Text("3rd Screen")
      //       ),
      //     ],
      //   ),
      // ),
      
      

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          // child: ListView(
          //
          //   // scrollDirection: Axis.horizontal,
          //
          //   children: [
          //
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //     Container(
          //       height: 50,
          //       width: 60,
          //       color: Colors.greenAccent,
          //       child: Center(child: Text("Go to Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),)),
          //     ),
          //     SizedBox(height: 20,),
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //   ],
          // ),

          child: ListView.builder(

            // scrollDirection: Axis.horizontal,
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(title: Text("Hello: $index"),);
            }


            ,



          ),


        ),
      ),
      
    );
  }
}
