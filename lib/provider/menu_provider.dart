import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    //cargarData();
  }

   Future<List<dynamic>> cargarData() async {
    print("Vamos a cargar la data...");
    final data = await rootBundle.loadString('data/menu.json');
    print("Estamos cargando la data...");
    //print(data);
    Map dataMapa = json.decode(data);
    //print(dataMapa['rutas']);
    this.opciones = dataMapa['rutas'];
    print("Terminamos de cargar la data");
    return this.opciones;
  }
}

final menuProvider = new _MenuProvider();
