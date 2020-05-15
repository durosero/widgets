import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'account_balance' : Icons.account_balance,
  'list' : Icons.list,
  'image' : Icons.image,
  'add_alert' : Icons.add_alert
};

Icon getIcon(String nombreIcono){
  return Icon(
    _icons[nombreIcono],color: Colors.blue,
  );
}