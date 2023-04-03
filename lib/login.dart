import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final formGlobalKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assest/login.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Form(
          key:formGlobalKey,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35,top: 130),
                child: Text('Welcome\nBack',style: TextStyle(
                  color: Colors.white,
                  fontSize: 33
                ),),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *.5,right: 35,left: 35),
                  child: Column(
                    children: [
                      TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        validator: (email) {
                          if (email!.isEmpty)
                            return null;
                          else
                            return 'Enter a valid email address';
                        },



                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        validator: (email) {
                          if (email!.isEmpty)
                            return null;
                          else
                            return 'Enter a valid email address';
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          GestureDetector(
                           onTap: (){
                             if ((formGlobalKey.currentState?.validate() ?? false)) {
                               // If the form is valid, display a Snackbar.
                               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed")));
                             //  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data is in processing.')));
                             }
                           },
                            child: Text('Sign in',style: TextStyle(
                              fontSize: 27,fontWeight: FontWeight.w700),

                            ),
                          ),

                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, child: Text('Sign Up',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,color:Color(0xff4c505b),
                          ),)),
                          TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,color:Color(0xff4c505b),
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
