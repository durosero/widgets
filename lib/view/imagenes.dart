import 'package:flutter/material.dart';

class Imagenes extends StatefulWidget {
  @override
  _ImagenesState createState() => _ImagenesState();
}

class _ImagenesState extends State<Imagenes> {
  List numeros = [4,5,6,7,8,7];
  String tituloApbar = "";
  //https://picsum.photos/500/300/?image=345
  @override
  Widget build(BuildContext context) {
     tituloApbar = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(tituloApbar),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext contex, int index) => Container(height: 10.0,) ,
        itemCount: numeros.length,
        itemBuilder: (BuildContext contex, int index){
          var numero = numeros[index];
          return FadeInImage(
            placeholder: AssetImage("assets/loading.gif"),
            image: NetworkImage("https://picsum.photos/500/300/?image=$numero"),
          );
        },
      ),
    );
  }
}