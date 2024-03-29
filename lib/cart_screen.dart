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
            color: Colors.green,
            fontWeight: FontWeight.bold, 
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          String key = cartItems.keys.elementAt(index);
          return Card(
            child: ListTile(
              title: Text('$key (${cartItems[key]})'),
            ),
          );
        },
      ),
    );
  }
}
