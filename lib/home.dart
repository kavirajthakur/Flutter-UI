import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAch(num,type){
    return Row(
      children: [
        Text(num,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),),
        Container(
          margin: EdgeInsets.only(top: 10),
          child:Text(type),
        )

      ],
    );

  }
 Widget mySpec(icon, text) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16, fontFamily: "Soho", color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      height: 115,
      width: 105,
    );
  }

    Future<void> _launchUrl() async {
      final Uri _url = Uri.parse('https://flutter.dev');

      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.white,
          icon: Icon(Icons.menu),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text('About',style: TextStyle(color: Colors.black),),
              onPressed: (){
                Navigator.pushNamed(context, 'about');

              },
            )),
            PopupMenuItem(child: TextButton(
              child: Text('Projects',style: TextStyle(color: Colors.black),),
              onPressed: (){
                Navigator.pushNamed(context, 'project');
              },
            ))
          ],

        ),


        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
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
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text('Hello I am',style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Soho",
                        fontSize: 15),),
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

                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20,0),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myAch('78', ' Projects'),
                myAch('65', ' Clients'),
                myAch('92', ' Messages'),
              ],
            ),
                SizedBox(
                  height: 30,
                ),
                Text('Specialized In',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _launchUrl();
                      },
                        child: mySpec(Icons.android, 'Android')),
                    mySpec(Icons.laptop, 'Laptop'),
                    mySpec(Icons.wordpress, 'WordPress'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(Icons.android, 'Android'),
                    mySpec(Icons.laptop, 'Laptop'),
                    mySpec(Icons.wordpress, 'WordPress'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(Icons.android, 'Android'),
                    mySpec(Icons.laptop, 'Laptop'),
                    mySpec(Icons.wordpress, 'WordPress'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
            ],
          ),
          );
        },
      ),
    );
  }
  }

