import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Shirt',
      'price': 25.99,
      'imageUrl': 'path/to/shirt.jpg',
    },
    {
      'name': 'Shoes',
      'price': 79.99,
      'imageUrl': 'path/to/shoes.jpg',
    },
    // Add more products...
  ];

  Home({super.key}); // Fixed constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Mezhaul Shop App'), // Changed 'child' to 'title'
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            color: Colors.grey,
            child: Row(
              children: [
                Image.network(product['imageUrl']), // Use product image
                const Text('  '), // Add some spacing
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product['name']),
                      Text('Price: \$${product['price']}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Add a label for accessibility and clarity
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_call),
            label: 'Alarm', // Add a label for accessibility and clarity
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm', // Add a label for accessibility and clarity
          ),
        ],
      ),
    );
  }
}
