import 'dart:developer';

import 'package:flutter/material.dart';
class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"),centerTitle: true,),
      body: Center(child: Column(
        children: [
          Switch(
              value: switchValue,
              onChanged: (value){
                log("$value");
                switchValue = value;
                setState(() {});

              }
          ),
        ],
      ),
      ),
    );
  }
}
