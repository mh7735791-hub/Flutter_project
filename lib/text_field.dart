import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field"),centerTitle: true,),
       body: Center(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Name",
                   prefixIcon: Icon(Icons.person,),
                   border:OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),

                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(70),
                     borderSide: BorderSide(color: Colors.brown,),
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Email & Number",
                   prefixIcon: Icon(Icons.email,),
                   border:OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),

                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Password",
                   suffixIcon: Icon(Icons.remove_red_eye,),
                   border:OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),

                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Conform password",
                   suffixIcon: Icon(Icons.remove_red_eye,),
                   border:OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),

                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(50),
                     borderSide: BorderSide(color: Colors.brown,),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 15,),
             ElevatedButton(onPressed: (){}, 
                 child: Text("Submit"))
           ],
         ),
       ),
    );
  }
}
