import 'package:flutter/material.dart';

class Accion extends StatelessWidget{

  IconData icon;
  String  texto;

  Accion({ @required this.icon, @required this.texto});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: _crearAccion(),
    );
  }
  
  Widget _crearAccion(){
    return Column(
        children: <Widget>[
          Icon(this.icon,color: Colors.blue,),
          Text(this.texto,style: TextStyle(color: Colors.blue),)
        ],
      );
  }

}