import 'package:flutter/material.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),centerTitle: true,backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
        child:
        Slider(
          label: "$sliderValue",
            value: sliderValue,
            onChanged: (v) {
              print("Slider : $v");
              sliderValue = v;
              setState(() {});
            },
        ),
      ),
    );
  }
}
