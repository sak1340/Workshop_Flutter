import 'package:flutter/material.dart';
import 'package:workshopflutter/views/home/Burger/widgets/MenuBox.dart';

class Burger extends StatefulWidget {
  static String routeName = "/burger";
  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  List catagory = ['Bun', 'Cheese', 'Rice', 'Curry', 'Vegetable', 'Drink'];
  List menu = [
    MenuBox(name: 'Bread',price: 5.00),
    MenuBox(name: 'Scone',price: 5.00),
    MenuBox(name: 'Chacol',price: 5.00),
    MenuBox(name: 'Black',price: 5.00),
    MenuBox(name: 'Rice',price: 5.00),
    ];
  Container ingredient() {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Ingredient'), Text('50.00')],
          ),
          Container(
            alignment: Alignment.centerLeft,
            // color: Colors.blue,
            child: Text('Icon'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        centerTitle: true,
        title: Text(
          'CREATE BURGER',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ingredient(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagory.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('${catagory[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: menu.length,
              itemBuilder: (context, index) {
                return menu[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
