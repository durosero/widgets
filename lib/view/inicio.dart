import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  final titulo = TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0);
  final subtitulo = TextStyle(color: Colors.grey, fontSize: 12.0);
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Image.network("https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              Row(
                children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Una lago",style: titulo ),
                    SizedBox(height: 5.0,),
                    Text("Una persona en un lago",style: subtitulo,),
                  ],
                ),
              ],)
            ],
          ),
        )
      );
  }
  
}