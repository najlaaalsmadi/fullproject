import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_register/home/components/body.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

List Mycolors = <Color>[
  Color(0xFFF6625E),
  Color(0xFF836DB8),
  Color(0xFFDECB9C),
  Colors.white,

];
Color primaryColor = Mycolors[1];

class _ImageGalleryState extends State<ImageGallery> {
  int selectedColorIndex = 0;
  int selectedImage = 0;
  bool isPressed = false;
  Color btncolor = Colors.white;
  Color bgtncolor = Colors.grey.shade200;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 2),

              width: 400,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Hero(
                      tag: 'image_${widget.images[selectedImage]}',
                      child: Image.asset(
                        widget.images[selectedImage],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          widget.images.length,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedImage = index;
                              });
                            },

                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 7),
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedImage == index
                                      ? Colors.deepOrange
                                      : Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                widget.images[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.translate(
                  offset: Offset(10, -40),
                  child: Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Body(),
                                ),
                              );
                            },
                            icon:
                                SvgPicture.asset("assets/icons/Back ICon.svg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-10, -50),
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.8',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(0,-2),
          child: Container(
            width: 400,
            height: 379,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Wireless Controller for PS4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        children: [
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -10),
                              child: Text(
                                'TM',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.translate(
                      offset: Offset(300, 0),
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (isPressed) {
                                btncolor = Colors.white;
                                bgtncolor = Colors.grey.shade200;
                              } else {
                                btncolor = Colors.red;
                                bgtncolor = Colors.red.shade100;
                              }
                              isPressed = !isPressed;
                            });
                          },
                          child: Icon(
                            Icons.favorite,
                            color: btncolor,
                            size: 22,
                          ),
                        ),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: bgtncolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Wireless Controller for PS4 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          children: [
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -10),
                                child: Text(
                                  'TM',
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' gives you what',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'you want in your gaming from over precision',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'control your games to sharing ...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'See More Detail',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 12, color: Colors.deepOrange)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Transform.translate(
                  offset: const Offset(0, 10),
                  child: Container(
                    width: 400,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Mycolors.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    primaryColor = Mycolors[index];
                                    selectedColorIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12), // Add padding here
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: selectedColorIndex == index
                                          ? Colors.deepOrange
                                          : Colors.transparent,
                                        width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    child: DecoratedBox(

                                      decoration: BoxDecoration(
                                        color: Mycolors[index],
                                        shape: BoxShape.circle,

                                      ),


                                    ),
                                  ),
                                ),

                              );
                            },
                          ),
                        ),

                        Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Perform the desired action when the add button is pressed
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Perform the desired action when the add button is pressed
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Transform.translate(

                  offset: const Offset(0, 20),
                  child: Container(
                    width: 400,
                    height: 87,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            shape: const StadiumBorder(),
                            color: Color(0xFFFF7643),
                            textColor: Colors.white,
                            child: const Text("Add To Cart"),
                            height: 50,
                            minWidth: 252,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: Stack(
              children: [
                ImageGallery(
                  images: [
                    'assets/images/Image Popular Product 1.png',
                    'assets/images/ps4_console_white_2.png',
                    'assets/images/ps4_console_white_3.png',
                    'assets/images/ps4_console_white_4.png',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
