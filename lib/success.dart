import 'package:flutter/material.dart';

class MySuccess extends StatefulWidget {
  const MySuccess({Key? key}) : super(key: key);

  @override
  State<MySuccess> createState() => _MysState();
}

class _MysState extends State<MySuccess> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: Center(child: Text('Login Sucessful'),),


    );
  }
}
