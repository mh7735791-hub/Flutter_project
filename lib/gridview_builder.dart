import "package:flutter/material.dart";

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {
  List fruits = [
    {
      "name": "Apple",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFITs4sAlrUwxG4FlFFpzDXZdVedmxV4RwszxHKYjU6Q&s=10",
      "weight": "150g",
    },
    {
      "name": "Banana",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiQaAxsRATV0wQMLVQrVX7l7xFe8_dlY5iYxcVIjVYMA&s=10",
      "weight": "120g",
    },
    {
      "name": "Grapes",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx9xJ6l3KxHdxo9GV5B5UPp0UENxeESU3GcGcvT6nmQA&s=10",
      "weight": "100g",
    },
    {
      "name": "Pineapple",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvyDhpB07f1vpScaGmzIAS0dT789XnG21SRMcF-FIngg&s=10",
      "weight": "900g",
    },
    {
      "name": "Orange",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRXwWRrtnPcO5Yn6UfH1OAl1RJMFsROhztJzYFBVrKiQ&s=10",
      "weight": "140g",
    },
    {
      "name": "kiwi",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGcJ39EHXdiOhd0HhA8DYn1OTCKo3T2vYApxb-Tv4Lw&s=10",
      "weight": "130g",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Builder"), centerTitle: true),
      body: GridView.builder(
        itemCount: fruits.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: .99,
        ),
        itemBuilder: (context, index) {
          return
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.brown),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: NetworkImage("${fruits[index]["image"]}"),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "${fruits[index]["name"]}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${fruits[index]["weight"]}",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                        ),
                        child: Text(
                          "30% OFF",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        onPressed: () {},
                        color: Colors.teal,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
                        ),
            );
        },
      ),
    );
  }
}
