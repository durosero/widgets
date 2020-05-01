import 'package:flutter/material.dart';
import 'package:widgets/view/disenio.dart';
import 'package:widgets/view/listview.dart';
import 'package:widgets/view/menu.dart';

 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     // home: ListaView()
     initialRoute: 'menu',
     routes: {
       'menu': (context) => Menu(),
       'disenio': (context) => Disenio(),

     },
    );
  }
}