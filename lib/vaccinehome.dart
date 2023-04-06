import 'package:flutter/material.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyVaccineHome extends StatefulWidget {
  const MyVaccineHome({Key? key}) : super(key: key);
  static String pincode = "";

  @override
  State<MyVaccineHome> createState() => _MyVaccineHomeState();
}

class _MyVaccineHomeState extends State<MyVaccineHome> {
  void showToast() {
  Fluttertoast.showToast(
      msg: 'This is toast notification',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.yellow
  );
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Find Vaccine Slot'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (data) {
                MyVaccineHome.pincode = data;
              },
              decoration: InputDecoration(
                  labelText: 'Enter Your Pincode',
                  hintText: 'Pincode',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              child: MaterialButton(
                onPressed: showToast,

                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(


            )
          ],
        ),
      ),
    );
  }
}
