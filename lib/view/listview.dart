import 'package:flutter/material.dart';

class ListaView extends StatelessWidget {

  

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("List view"),
          ),
          body: _crearListaDinamica()),
    );
  }



    Widget _crearListaDinamica() {
    return ListView.separated(
      separatorBuilder:  (BuildContext context, int index) => Divider(),
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text("durosero@itp.edu.co"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print("Tap..");
          },
        );
      },
    );
  }

  // Widget _crearListaDinamica() {
  //   return ListView.builder(
  //     itemCount: 50,
  //     itemBuilder: (BuildContext context, int index) {

  //       return ListTile(
  //         title: Text("Duvan Rosero"),
  //         subtitle: Text("durosero@itp.edu.co"),
  //         leading: Icon(Icons.account_balance),
  //         trailing: Icon(Icons.keyboard_arrow_right),
  //         onTap: () {
  //           print("Tap..");
  //         },
  //       );
  //     },
  //   );
  // }

  Widget _crearListaEstatica() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text("durosero@itp.edu.co"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print("Tap..");
          },
        ),
        ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text("durosero@itp.edu.co"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print("Tap..");
          },
        ),
        Divider(),
        ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text("durosero@itp.edu.co"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print("Tap..");
          },
        ),
      ],
    );
  }
}
