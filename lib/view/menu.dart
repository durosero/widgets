import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menú principal"),
        ),
        body: _crearMenu( context ),
      ),
    );
  }


  Widget _crearMenu(BuildContext context){

    return ListView(
      children: <Widget>[
         ListTile(
          title: Text("Diseños"),
     //    subtitle: Text("durosero@itp.edu.co"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.pushNamed(context, "disenio");
          },
        ),
        Divider(),
      ],
    );
  }



}