import 'package:flutter/material.dart';
import 'package:widgets/provider/login_provider.dart';


class Httpget extends StatefulWidget {
  @override
  _HttpgetState createState() => _HttpgetState();
}

class _HttpgetState extends State<Httpget> {
  final loginProvider = new LoginProvider();
  TextEditingController userController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  String  texto  = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Http"),
        ),
        body: Container(
          margin: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[

              TextField(
                controller: userController,
              ),
              Container(height: 10.0),
               TextField(
                 controller: passController,
               ),


            //  Text(texto),

              RaisedButton(
                child: Text('Iniciar sesión'),
                onPressed: (){
                  // loginProvider.getMensaje().then((data){
                  //   setState(() {
                  //     texto = data['developer'];
                  //   });
                  // });

                  loginProvider.login(userController.text, passController.text).then((data){
                   
                   
                    print(data);
                  });

                  print(userController.text);
                },
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
      
    );
  }
}