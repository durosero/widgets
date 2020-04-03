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
        body: SingleChildScrollView(
                  child: Container(
            child: Column(
              children: <Widget>[
                Image.network("https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                _seccion1(),
                _acciones(),
                _crearTexto()
              ],
            ),
          ),
        )
      );
  }


  Widget _seccion1(){
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
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

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      child: Column(
        children: <Widget>[
          Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
          Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
        ],
      ),
    );

  }

}