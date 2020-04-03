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
              _seccion1(),
              _acciones()
             



            ],
          ),
        )
      );
  }


  Widget _seccion1(){
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Una lago",style: titulo ),
                    SizedBox(height: 5.0,),
                    Text("Una persona en un lago",style: subtitulo,),
                  ],

                ), 
                ),
              Icon(Icons.star,color: Colors.red,),
              Text("45")
            ],),
          );
  }
  

  Widget _acciones(){
    return Container(
      child: Row(
        children: <Widget>[

          Column(
            children: <Widget>[
              Icon(Icons.call,color: Colors.blue,),
              Text("Llamar",style: TextStyle(color: Colors.blue),)
            ],
          ),

          Column(
            children: <Widget>[
              Icon(Icons.near_me,color: Colors.blue,),
              Text("Llamar",style: TextStyle(color: Colors.blue),)
            ],
          ),
          
          Column(
            children: <Widget>[
              Icon(Icons.share,color: Colors.blue,),
              Text("Llamar",style: TextStyle(color: Colors.blue),)
            ],
          ),

      ],),
    );
  }

}