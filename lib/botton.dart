import 'package:flutter/material.dart';

class BottonScreen extends StatefulWidget {
  const BottonScreen({super.key});

  @override
  State<BottonScreen> createState() => _BottonScreenState();
}

class _BottonScreenState extends State<BottonScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botton", style: TextStyle(color: Colors.lightBlue)),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$i",style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              ElevatedButton(onPressed: () {
                i--;
                setState(() {});
              },
                  child: Text("-")),
              ElevatedButton(onPressed: (){
                i++;
                setState(() {});
              },
                  child: Text("+")),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
