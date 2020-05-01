import 'package:flutter/material.dart';

class ListaView extends StatelessWidget {

  final numeros = ["UNO", "DOS", "TRES", "CUATRO", "CINCO"];

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("List view"),
          ),
          body: ListView(
            children: _crearItem(),
          )
        ),
    );
  }


  List<Widget> _crearItem(){
    List<Widget> lista = new List<Widget>();

    for (var opt in numeros) {
      final tempWidget = ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text(opt ),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print("Tap..");
          },
        );
        lista.add(tempWidget);

    }


      return lista;
  }

    Widget _crearListaDinamica() {
    return ListView.separated(
      separatorBuilder:  (BuildContext context, int index) => Divider(),
      itemCount: numeros.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Duvan Rosero"),
          subtitle: Text(numeros[index]),
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
