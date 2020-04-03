import 'package:flutter/material.dart';

class Accion extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: _acciones(),
    );
  }


    Widget _acciones(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          _crearAccion(Icons.call,"Llamar"),
          _crearAccion(Icons.near_me,"Ubicacion"),
          _crearAccion(Icons.share,"Compartir"),


      ],),
    );
  }

  Widget _crearAccion(IconData icon, String texto){
    return Column(
        children: <Widget>[
          Icon(icon,color: Colors.blue,),
          Text(texto,style: TextStyle(color: Colors.blue),)
        ],
      );
  }

}