import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_register/forgot_password.dart';
import 'package:task1_register/home/components/home_screen.dart';
import 'package:task1_register/rigister.dart';
import 'package:task1_register/complete_profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task1_register/start.dart';

import 'home/components/body.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

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
                              builder: (context) => StartPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "Sign in with your email and password",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "or continue with social media",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
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
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(

                              decoration: InputDecoration(

                                labelText: 'Password',
                                hintText: 'Enter your password',
                                prefixIcon: Transform.scale(
                                  scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                  child: SvgPicture.asset(
                                    "assets/icons/Lock.svg",
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,

                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 25),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            Align(

                                alignment: Alignment.centerRight,
                                child: Row(
                                  children: [

                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => forgot(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Forgot Password',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                          ],
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => Body(),
                              ),
                              );
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),

                        child:IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/google-icon.svg"),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child:IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/facebook-2.svg"),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                      ),
                    ],
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
