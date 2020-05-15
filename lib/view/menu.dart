import 'package:flutter/material.dart';
import 'package:widgets/provider/menu_provider.dart';
import 'package:widgets/utils/icon_string_util.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menú principal"),
        ),
        body: _crearMenu(context),
      ),
    );
  }

  Widget _crearMenu(BuildContext context) {
    // menuProvider.cargarData().then((data){
    //   print('Rutas del  menu');
    //   print(data);
    // });

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _crearOpcion(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearOpcion(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTem = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          // Navigator.pushReplacementNamed(context, "lista");
        },
      );

      opciones..add(widgetTem)..add(Divider());
    });
    return opciones;
  }
}
