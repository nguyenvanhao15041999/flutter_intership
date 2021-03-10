import 'package:flutter/material.dart';
import 'file:///E:/ThucTap/Flutter/infor_app/lib/screen/display_screen.dart';
import 'file:///E:/ThucTap/Flutter/infor_app/lib/screen/editcompany_screen.dart';
import 'file:///E:/ThucTap/Flutter/infor_app/lib/screen/inforcompany_screen.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InforCompany(),
    );

  }
}
