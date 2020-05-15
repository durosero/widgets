import 'package:flutter/material.dart';

class Alertas extends StatefulWidget {
  @override
  _AlertasState createState() => _AlertasState();
}

class _AlertasState extends State<Alertas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: _crearBotton(context),
    );
  }

  Widget _crearBotton(BuildContext context){
    return Center(
          child: RaisedButton(
        color: Colors.blue,
        shape: StadiumBorder(),
        child: Text("Muestra alerta"),
        onPressed: (){
          _muestraAlerta(context);
        },
      ),
    );
  }


  void _muestraAlerta(BuildContext context){

  showDialog(
    context: context,
    barrierDismissible:false,

    builder: (context){
     return AlertDialog(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20.0)
       ),
       title: Text("Titulo"),
       content: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           Text("Este es el contenido"),
           FlutterLogo(size: 80.0,)
         ],
       ),
       actions: <Widget>[
          FlatButton(
           child: Text("Cancelar"),
           onPressed: (){
             Navigator.of(context).pop();
           },
         ),
         FlatButton(
           child: Text("Guardar"),
           onPressed: (){

           },
         ),
       ],
     );
    }
    );

  }
}