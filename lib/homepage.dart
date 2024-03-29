// homepage.dart
import 'package:flutter/material.dart';
import 'cart_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = ['Chemex', 'French Press', 'Latte', 'Cappuccino'];

  Map<String, int> cartItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00714B),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Smooth out your everyday !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2 /
                    3, // Adjust this value to control the height of the cards
                children: items.map((item) {
                  return Container(
                    height: 400, // Set the height as per your requirement
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          if (item == 'Chemex')
                            Container(
                              height: 100.0, // specify the height
                              width: 100.0, // specify the width
                              child: Image.asset('assets/images/chemex.png'),
                            ),
                          if (item == 'French Press')
                            Container(
                              height: 100.0, // specify the height
                              width: 100.0, // specify the width
                              child:
                                  Image.asset('assets/images/frenchpress.png'),
                            ),
                          if (item == 'Cappuccino')
                            Container(
                              height: 100.0, // specify the height
                              width: 100.0, // specify the width
                              child:
                                  Image.asset('assets/images/cappuccino.png'),
                            ),
                          if (item == 'Latte')
                            Container(
                              height: 100.0, // specify the height
                              width: 100.0, // specify the width
                              child: Image.asset('assets/images/latte.png'),
                            ),
                          Text(item),
                          Text('Count: ${cartItems[item] ?? 0}'),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                cartItems.update(item, (value) => value + 1,
                                    ifAbsent: () => 1);
                              });
                            },
                            child: Text(
                              'Order Now',
                              style: TextStyle(
                                  color: Colors.white), // make text color white
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF00714B)), // background color
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5.0), // simple border radius
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartScreen(cartItems)),
          );
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.white, // make background color white
      ),
    );
  }
}
