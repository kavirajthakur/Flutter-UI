import 'package:firstproject/about.dart';
import 'package:firstproject/project.dart';
import 'package:flutter/material.dart';

import 'dp.dart';
import 'home.dart';
import 'vaccinehome.dart';
import 'vaccineresults.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'vaccinehome',
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'project': (context) => MyProjects(),
      'dp': (context) => MyApp(),
      'vaccinehome': (context) => MyVaccineHome(),
      'vaccineresults':(context)=> MyVaccineResult(),   },
  ));
}
