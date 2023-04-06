import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  final Uri _url=Uri.parse('https://drive.google.com/drive/u/0/folders/1nkDPfdeQarLQY9cfxN6R7RwXbD_PY4rg');
  final Uri _linkedinUrl=Uri.parse('https://www.linkedin.com/in/kaviraj-thakur-a84b671a6/');
  final Uri _instaUrl=Uri.parse('https://www.instagram.com/kaviraj.thakurrr/');
  final Uri _facebookUrl=Uri.parse('https://facebook.com');
  final Uri _githubUrl=Uri.parse('https://github.com/kavirajthakur');
  final Uri _whatsappUrl=Uri.parse('https://web.whatsapp.com/');
  Future<void> _launchUrl(var url) async {
    print("launch 1");
    if (!await launchUrl(url)) {
      print("launch 2");
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assest/kaviraj.png',height: 400,fit: BoxFit.contain,),

              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  Text('Hello I am',style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Soho",
                      fontSize: 15),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Kaviraj Thakur',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Flutter Developer, Poet',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Soho",
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        _launchUrl(_url);

                      },
                      child: Text('Hire Me'),

                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),

                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 90
                    ,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed:(){
                        _launchUrl(_linkedinUrl);

                      }, icon: Icon(
                        FontAwesomeIcons.linkedinIn,color: Colors.white,

                      ),),
                      IconButton(onPressed:(){
                        _launchUrl(_instaUrl);

                      }, icon: Icon(
                        FontAwesomeIcons.instagram,color: Colors.white,

                      ),),
                      IconButton(onPressed:(){
                        _launchUrl(_facebookUrl);

                      }, icon: Icon(
                        FontAwesomeIcons.facebook,color: Colors.white,

                      ),),
                      IconButton(onPressed:(){
                        _launchUrl(_githubUrl);

                      }, icon: Icon(
                        FontAwesomeIcons.github,color: Colors.white,

                      ),),
                      IconButton(onPressed:(){
                        _launchUrl(_whatsappUrl);

                      }, icon: Icon(
                        FontAwesomeIcons.whatsapp,color: Colors.white,

                      ),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
