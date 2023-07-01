import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:task1_register/login.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'dot_indicator.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final List<String> imageList = [
    'assets/images/splash_1.png',
    'assets/images/splash_2.png',
    'assets/images/splash_3.png',
  ];

  int currentIndex = 0; // Variable to track the current image index

  CarouselController carouselController = CarouselController();

  void goToPrevious() {
    carouselController.previousPage();
  }

  void goToNext() {
    carouselController.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    DotDecorator decorator = DotDecorator(
      activeDecoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.orangeAccent,
      ),
      inactiveDecoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
      size: Size.square(8.0),
      activeSize: Size(18.0, 8.0),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,

      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "TOKOTO",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Welcome to TOKOTO, let's shop!",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 25),
          CarouselSlider(
            carouselController: carouselController,
            items: imageList.map((imagePath) {
              return Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 850,
                width: 200,
              );
            }).toList(),
            options: CarouselOptions(
              height: 200, // تم تحديث الارتفاع إلى 700 هنا
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),

          SizedBox(height: 20),
          DotIndicator(
            dotCount: imageList.length,
            currentIndex: currentIndex,
            decorator: decorator,
          ),
          SizedBox(height: 50),
          SizedBox(height: 50),
          SizedBox(height: 50),
          SizedBox(height: 50),
          SizedBox(height: 50),

          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
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
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
