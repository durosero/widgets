import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginProvider {
  final String baseurl = "https://intranet.itp.edu.co/api";

  Future getMensaje() async {
    final response = await http.get(baseurl);
    final decodeData = json.decode(response.body);
    return decodeData;
  }


    Future login(String user, String pass) async {
    
    Map<String, String> params = {
      'user' : user,
      'pass' : pass
    }; 

    final response = await http.post(
      baseurl+"/login",
      body: params,
      headers: {
        'Accept' : 'application/json',
        'Content-Type' : 'application/x-www-form-urlencoded'
      }
      );
    final decodeData = json.decode(response.body);
    return decodeData;
  }

  
}
