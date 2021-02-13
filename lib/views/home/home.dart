import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshopflutter/provider/store.dart';
import 'package:workshopflutter/views/home/Burger/burger.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<Store>(
          builder: (context, value, child) {
            return Column(
              children: [
                Text('$count'),
                Text('Hello'),
                RaisedButton(
                    child: Text('Add'),
                    onPressed: () {
                      Navigator.pushNamed(context, Burger.routeName);
                    }),
                Text('${value.sumPrice}'),
                RaisedButton(
                    child: Text('Add'),
                    onPressed: () {
                      value.undateSum(10);
                    }),
              ],
            );
          },
        ),
      ),
    );
  }
}
