import 'package:flutter/material.dart';

class MyVaccineResult extends StatefulWidget {
  const MyVaccineResult({Key? key}) : super(key: key);

  @override
  State<MyVaccineResult> createState() => _MyVaccineResultState();
}

class _MyVaccineResultState extends State<MyVaccineResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(''),
      ),
    );
  }
}
