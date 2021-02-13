import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshopflutter/provider/store.dart';
import 'package:workshopflutter/views/home/Burger/burger.dart';
import 'package:workshopflutter/views/home/home.dart';


void main(){
  return runApp(App());
}


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        Burger.routeName : (context) => Burger(),
      },
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Store>(create: (_) => Store(),)
        ],
        child: Home(),),
    );
  }
}