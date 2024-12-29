import 'package:flutter/material.dart';

void main() => runApp(CartPageApp());

class CartPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  // Sample product data
  final List<Map<String, dynamic>> cartItems = [
    {
      "title": "Product 1",
      "subtitle": "Description of Product 1",
      "price": 29.99,
      "image":
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1999&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "Product 2",
      "subtitle": "Description of Product 2",
      "price": 49.99,
      "image":
          "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "Product 3",
      "subtitle": "Description of Product 3",
      "price": 19.99,
      "image":
          "https://images.unsplash.com/photo-1504274066651-8d31a536b11a?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  item["image"],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(item["title"],
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item["subtitle"]),
              trailing: Text(
                "\$${item["price"].toStringAsFixed(2)}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
