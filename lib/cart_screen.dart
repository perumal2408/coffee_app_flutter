import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final Map<String, int> cartItems;

  CartScreen(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Order',
          style: TextStyle(
            color: Colors.green, // make text color green
            fontWeight: FontWeight.bold, // make text bold
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          String key = cartItems.keys.elementAt(index);
          return Card(
            // wrap with Card
            child: ListTile(
              title: Text('$key (${cartItems[key]})'),
            ),
          );
        },
      ),
    );
  }
}
