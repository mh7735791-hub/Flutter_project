
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List s = [
    {
      "id": 1,
      "name": "Alex Mercer",
      "email": "alex@example.com",
      "major": "Computer Science",
    },
    {
      "id": 2,
      "name": "Maya Lin",
      "email": "maya@example.com",
      "major": "Data Science",
    },
    {
      "id": 3,
      "name": "Jordan Hayes",
      "email": "jordan@example.com",
      "major": "Engineering",
    },
    {
      "id": 4,
      "name": "Hasib",
      "email": "hasib@example.com",
      "major": "Engineering",
    },
    {
      "id": 5,
      "name": "Alif",
      "email": "alif@example.com",
      "major": "Data Science",
    },
    {
      "id": 6,
      "name": "Niloy",
      "email": "niloy@example.com",
      "major": "Engineering",
    },
    {
      "id": 7,
      "name": "Mitu",
      "email": "mitu@example.com",
      "major": "Data Science",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Student List"),
      ),
      body: ListView.builder(
        itemCount: s.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${s[index]["id"]}")),
            title: Text("${s[index]["name"]}"),
            subtitle: Text("${s[index]['email']}"),

          );
        },
      ),
    );
  }
}