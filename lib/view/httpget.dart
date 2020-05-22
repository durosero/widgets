import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:widgets/provider/mensaje_provider.dart';

class HttpGet extends StatefulWidget {
  @override
  _HttpGetState createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  String datos = "";
  final msjProvider = new MensajeProvider();
  TextEditingController userController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  String msj = "";

  @override
  Widget build(BuildContext context) {
    final texto = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(texto.toString()),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: "Usuario"),
                controller: userController,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: "Contraseña"),
                controller: passController,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text("Autenticar"),
                      onPressed: _login,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(msj)
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    print(userController.text);

    msjProvider.login(userController.text, passController.text).then((data) {
      setState(() {
        msj = data['message'];
      });
    });
  }

  void _getData() {
    print("Cargando..");

    msjProvider.getMensaje().then((data) {
      setState(() {
        datos = json.encode(data);
      });
    });
  }
}
