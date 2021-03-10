import 'package:flutter/material.dart';

import 'inforcompany_screen.dart';
void main() {
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InforCompany(),
    );
  }
}
