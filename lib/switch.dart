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
      appBar: AppBar(title: Text("Switch"),
        centerTitle: true,backgroundColor: Colors.lightBlue),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: SwitchListTile(
              title: Text("Power On/Off",style: TextStyle(fontSize: 20),),
              subtitle: Text("Switch botton click"),
              value: switchValue,
                onChanged: (value) {
                  switchValue = value;
                  setState(() {});
                },
            ),
          ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: SwitchListTile(
          title: Text("Dark Mode On/Off",style: TextStyle(fontSize: 20),),
          subtitle: Text("Display black/light mode setting"),
          value: switchValue,
          onChanged: (value) {
            switchValue = value;
            setState(() {});
          },
        ),
      ),
    ],
    ),
    );
  }
}
