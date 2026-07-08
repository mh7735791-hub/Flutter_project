import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List p = [
    {
      "id": 1,
      "name": "Wireless Noise-Canceling Headphones",
      "image":
      "https://cdn.thewirecutter.com/wp-content/media/2025/05/BEST-NOISE-CANCELLING-HEADPHONES-8246-2x1-1.jpg?auto=webp&quality=75&crop=1.91:1&width=1200",
      "brand": "SonicWave",
      "category": "Electronics",
      "regular_price": 199.99,
      "discount_price": 149.99,
    },
    {
      "id": 2,
      "name": "Makeup box",
      "image":
      "https://png.pngtree.com/png-clipart/20250103/original/pngtree-makeup-box-isolated-on-transparent-background-png-image_18969756.png",
      "brand": "FlexiFit",
      "category": "Furniture",
      "regular_price": 249.50,
      "discount_price": 189.00,
    },
    {
      "id": 3,
      "name": "Stainless Steel Smart Water Bottle",
      "image":
      "https://image.made-in-china.com/202f0j00onNVKUzaAIgd/Cheap-Stainless-Steel-Smart-Water-Bottle-with-LED-Temperature-Display-Thermo-Tumbler-Cups-in-Bulk.webp",
      "brand": "HydroTech",
      "category": "Kitchen & Dining",
      "regular_price": 45.00,
      "discount_price": 34.99,
    },
    {
      "id": 4,
      "name": "Smart phone",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe7eEiuLNFU0g-JKF0XZVPgMnZXrd5Z5CffRoOsjM4fw&s=10",
      "brand": "AeroStride",
      "category": "Apparel & Shoes",
      "regular_price": 12000.00,
      "discount_price": 8500.00,
    },
    {
      "id": 5,
      "name": "4K Ultra HD Streaming Stick",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_sIdu2b30vAzOSQHj_LsUmg8AwWqYBesTeOX_zFK63g&s=10",
      "brand": "StreamCast",
      "category": "Electronics",
      "regular_price": 49.99,
      "discount_price": 39.99,
    },
    {
      "id": 6,
      "name": "Organic Cotton Hoodie",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQKIFJ2JqEg0K9hu3p0VFc5GCP8ptHtD08awFxqemFIqHkezBS4I3sfA&s=10",
      "brand": "EcoThread",
      "category": "Apparel & Shoes",
      "regular_price": 65.00,
      "discount_price": 45.50,
    },
    {
      "id": 7,
      "name": "Professional Chef's Knife",
      "image":
      "https://www.gadstyle.com/wp-content/uploads/2025/06/professional-forged-chefs-knife-vegetable-and-meat-cutting-knife-kitchen-tool-4.webp",
      "brand": "Cutwell",
      "category": "Kitchen & Dining",
      "regular_price": 89.99,
      "discount_price": 69.99,
    },
    {
      "id": 8,
      "name": "Portable Bluetooth Speaker",
      "image":
      "https://media-ik.croma.com/Croma%20Assets/Entertainment/Speakers%20and%20Media%20Players/Images/251614_0_ghxuff.png",
      "brand": "SonicWave",
      "category": "Electronics",
      "regular_price": 79.99,
      "discount_price": 59.99,
    },
    {
      "id": 9,
      "name": "Minimalist Leather Wallet",
      "image":
      "https://images.squarespace-cdn.com/content/v1/5a8300bdf09ca43baa039bee/e2de473c-68f4-4115-87ce-d4a0d56bfb1b/IMG_3056.jpg?format=1000w",
      "brand": "Hide & Stitch",
      "category": "Accessories",
      "regular_price": 35.00,
      "discount_price": 28.00,
    },
    {
      "id": 10,
      "name": "Electric Gooseneck Kettle",
      "image": "https://m.media-amazon.com/images/I/61HMGdZDaWL.jpg",
      "brand": "BrewMaster",
      "category": "Kitchen & Dining",
      "regular_price": 115.00,
      "discount_price": 89.95,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("${p[index]["image"]}"),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          "${p[index]["name"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Brand : ${p[index]['brand']}",
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            Text(
                              "Category : ${p[index]['category']}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            Text(
                              "\$${p[index]['discount_price']}",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$${p[index]['regular_price']}",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
