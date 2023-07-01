import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_register/login.dart';
import 'package:task1_register/complete_profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

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
                  SizedBox(height: 25),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Register Account",
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
                      "Complete your details or continue",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "with social media",
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
                                labelText: 'password',
                                hintText: 'Enter your password',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/Lock.svg",
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
                                labelText: 'password',
                                hintText: 'Re-enter your password',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/Lock.svg",
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
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CompleteScreen(),
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
                  SizedBox(height: 35),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "By continuing your confirm that you agree",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
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
