import 'package:flutter/material.dart';
class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  List c= [
  {
  "id": 1,
  "name": "Apple",
  "image": "https://assets.clevelandclinic.org/transform/cd71f4bd-81d4-45d8-a450-74df78e4477a/Apples-184940975-770x533-1_jpg"
  },
  {
  "id": 2,
  "name": "Cheery",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnmG1dN8pxqmiH5BdOX-yniS554N4vYOv1T_udBlYeA&s=10"
  },
  {
  "id": 3,
  "name": "papaya",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0dFkYAQmPCSa6Vt-TfHpZt8FLlpDNKld_o1RP2ARt7w&s=10"
  },
  {
  "id": 4,
  "name": "Kiwi",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGn3LyH0XICJWFHn1tWneQPSfIOKDClMgBX8g4t2DNrQ&s=10"
  },
  {
  "id": 5,
  "name": "Grape",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzj2VbcdEFS9ICt840La7ElKIGYBeUFxwNmltPQxyuYw&s=10"
  },
  {
  "id": 6,
  "name": "Mango",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrRp_T0SOM9QTlydf-u-IvZFGG8R1qzzmmRTBZM2NuJQ&s=10"
  },
  {
  "id": 7,
  "name": "Orange",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvFp3MjJroA5MFjwAX30WZACVssJPVxbigy25jGN0_MA&s=10"
  },
  {
  "id": 8,
  "name": "Lemon",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLYhjHPCkLTHf0lglClowG0X4tufPZB7F_LNaemTqku_CSiPJ4mYbpNzLc&s=10"
  },
  {
  "id": 9,
  "name": "Avocados",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwcDHlKqoYuAEC5xlQ9aiGSCKdNMEo_sJ6A40pbn3XXpKdWi5D2gVDd68&s=10"
  },
  {
  "id": 10,
  "name": "Banana",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3QnlJPnTpWEovsBNGOsgkoxhELLYTix2o7engCHOQ-w&s"
  }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Builder'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: GridView.builder(
          itemCount: c.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 10,
              childAspectRatio: .98
            ),
            itemBuilder:(context,index){
               return Column(
                 children: [
                   Container(
                     height: 200,
                     width: 300,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: 
                         NetworkImage("${c[index]["image"]}")),
                     ),
                   ),
                   Text("${c[index]["name"]}",overflow: TextOverflow.ellipsis,),
                 ],
               );
            }
        ),
      ),

    );
  }
}


