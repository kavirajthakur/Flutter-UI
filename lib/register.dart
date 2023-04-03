import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assest/register.png'), fit: BoxFit.cover
                )

            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
                    ),
                  ),
                  Container(
                    child:
                    Text('Create\nAccount',style: TextStyle(
                        color: Colors.white,
                        fontSize: 33
                    ),),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign in',style: TextStyle(
                          fontSize: 27,fontWeight: FontWeight.w700),

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
                    children: [
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
    );
  }
}
