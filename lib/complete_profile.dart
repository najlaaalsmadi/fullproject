import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_register/login.dart';
import 'package:task1_register/rigister.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({Key? key});

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
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Complete Profile",
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
                  SizedBox(height: 15),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'First name',
                                hintText: 'Enter your First name',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/User.svg",
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
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Last name',
                                hintText: 'Enter your last name',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/User.svg",
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
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'phone number',
                                hintText: 'Enter your phone number',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/Phone.svg",
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
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'phone address',
                                hintText: 'Enter your phone address',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8.0), // تحديد التحريك إلى اليمين
                                  child: Transform.scale(
                                    scale: 0.5, // تغيير النسبة هنا حسب الحجم المطلوب
                                    child: SvgPicture.asset(
                                      "assets/icons/Location point.svg",
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
                        SizedBox(height: 15),
                        Center(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: StadiumBorder(),
                            color: Colors.orange,
                            textColor: Colors.white,
                            child: Text("Continue"),
                            height: 40,
                            minWidth: 300,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
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
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      "with our term and condition ",
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
