import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder'),centerTitle: true,),
      body: GridView.builder(
        itemCount: 10,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2) ,
          itemBuilder: (context,index){
            return Card(
              child: Container(
                height: 50,
                width: 50,
                color: Colors.pink,
              ),
            );
          }
      ),
    );
  }
}
