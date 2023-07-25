import 'package:flutter/material.dart';
import 'package:task1_register/Auth.dart';
import 'package:task1_register/home/components/home_screen.dart';
import 'package:task1_register/profile/setting.dart';
import 'package:task1_register/start.dart';
import 'package:firebase_core/firebase_core.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Text("profile page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Setting(),
                  ),
            );
          },
            icon: Icon(Icons.settings, color: Colors.white,),
          ),

        ],

      ),
      body: Container(
        padding: EdgeInsets.only(
            left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_1280.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.grey,
                          ),
                          child: Icon(
                            Icons.edit, color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              buildTextField("Full Name","Najlaa AL-Smadi",false),
              buildTextField("Email","najlaa399@gmail.com",false),
              buildTextField("Password","*********",false),
              SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: (){}, child: Text("CANCEL",
                      style:TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("SAVE", style:TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.white,

                  ),),

                 style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                   padding: EdgeInsets.symmetric(horizontal: 50),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
                  ),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder,
      bool isPasswordTextField) {
    bool isObscurePassword = true; // Default value for password visibility

    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: placeholder,
          suffixIcon: isPasswordTextField
              ? IconButton(
            icon: Icon(
                isObscurePassword ? Icons.visibility : Icons.visibility_off),
            color: Colors.grey,
            onPressed: (){
            setState(() {
              isObscurePassword = !isObscurePassword;
            });

              // Toggle password visibility

            },
          )
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
