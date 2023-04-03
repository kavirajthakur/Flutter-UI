import 'package:firstproject/about.dart';
import 'package:firstproject/project.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',

    routes: {
      'home':(context) => MyHome(),
      'about':(context) => MyAbout(),
      'project':(context) => MyProjects(),


    },
  )

  );
}





