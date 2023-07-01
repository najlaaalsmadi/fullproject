import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_register/forgot_password.dart';
import 'package:task1_register/rigister.dart';
import 'package:task1_register/complete_profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task1_register/login.dart';
class forgot extends StatelessWidget {
  const forgot({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BackButton(
                        onPressed: () {
                          Navigator.push(
                           context,
                            MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 80),

                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "please enter your email and we will send",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "you a link to your account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(height: 25),
                  SizedBox(height: 10),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter your Email',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/Mail.svg",
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),

                        SizedBox(height: 25),

                        SizedBox(height: 10),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                              //builder: (context) => OTPVerificationScreen(),
                               //),
                              //);
                            },
                            shape: StadiumBorder(),
                            color: Colors.orange,
                            textColor: Colors.white,
                            child: Text("Continue"),
                            height: 40,
                            minWidth: 300,
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.orangeAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
