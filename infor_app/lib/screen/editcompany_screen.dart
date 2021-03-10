import 'package:flutter/material.dart';
class EditInfor extends StatefulWidget {
  @override
  _EditInforState createState() => _EditInforState();
}

class _EditInforState extends State<EditInfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Edit inforcompany'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'Họ tên',
              ),

            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'Mức lương',
              ),

            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'Tuổi',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
