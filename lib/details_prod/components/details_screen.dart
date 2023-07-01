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

class _ImageGalleryState extends State<ImageGallery> {
  int selectedColorIndex = 0;
  int selectedImage = 0;
  bool isPressed = false;
  Color btncolor = Colors.white;
  Color bgtncolor = Colors.grey.shade200;
  bool isSelected = false;
  List<Color> buttonColors = [
    Colors.red,
    Colors.deepPurpleAccent,
    Colors.brown.shade200,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              width: 400,
              height: 310,
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
                      padding: const EdgeInsets.all(3.0),
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
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedImage == index
                                      ? Colors.orange
                                      : Colors.transparent,
                                  width: 2,
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
                  offset: Offset(10, -50),
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
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
          offset: Offset(0, -10),
          child: Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Wireless Controller for PS4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -10),
                              child: Text(
                                'TM',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.translate(
                      offset: Offset(280, 0),
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
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: bgtncolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      SizedBox(height: 10),
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
                        onTap: (){},
                        child: Row(
                          children:[
                            Text(
                                'See More Detail',
                                style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios,size: 12,color: Colors.orange)

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6),

    Transform.translate(
    offset: Offset(0, -1),
    child: Container(
    width: double.infinity,
    height: 68,
    decoration: BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(20.0),
    border: Border.all(color: Colors.grey.shade200),
    ),
    child:Row(
    children: [
    GestureDetector(
    onTap: () {
    setState(() {
    isSelected = !isSelected;
    });
    },
    child: Container(
    margin: EdgeInsets.only(right: 2),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: Colors.transparent,
    border: Border.all(
    color: isSelected ? Colors.orange : Colors.transparent,
    ),
    shape: BoxShape.circle,
    ),
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.red,
    shape: BoxShape.circle,
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: () {
    setState(() {
    isSelected = !isSelected;
    });
    },
    child: Container(
    margin: EdgeInsets.only(right: 2),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: Colors.transparent,
    border: Border.all(
    color: isSelected ? Colors.deepPurpleAccent : Colors.transparent,
    ),
    shape: BoxShape.circle,
    ),
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.deepPurpleAccent,
    shape: BoxShape.circle,
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: () {
    setState(() {
    isSelected = !isSelected;
    });
    },
    child: Container(
    margin: EdgeInsets.only(right: 2),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: Colors.transparent,
    border: Border.all(
    color: isSelected ? Colors.brown.shade200 : Colors.transparent,
    ),
    shape: BoxShape.circle,
    ),
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.brown.shade200,
    shape: BoxShape.circle,
    ),
    ),
    ),
    ),
    GestureDetector(
    onTap: () {
    setState(() {
    isSelected = !isSelected;
    });
    },
    child: Container(
    margin: EdgeInsets.only(right: 2),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    color: Colors.transparent,
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.orange,
    ),
    ),
    child: Stack(
    alignment: Alignment.center,
    children: [
    DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    ),
    ),
    DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(width: 70),
    GestureDetector(
    onTap: () {
    // Action when the '-' item is pressed
    },
    child: Container(
    margin: EdgeInsets.only(right: 2),
    padding: EdgeInsets.all(8),
    height: 45,
    width: 45,
    decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    ),
    child: Center(
    child: Text(
    '-',
    style: TextStyle(
    color: Colors.orange,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
    ),
    SizedBox(width: 10),
      GestureDetector(
        onTap: () {
          // Action when the '+' item is pressed
        },
        child: Container(
          margin: EdgeInsets.only(right: 2),
          padding: EdgeInsets.all(8),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 11,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {},
              shape: StadiumBorder(),
              color: Colors.orangeAccent,
              textColor: Colors.white,
              child: Text("Add To Cart"),
              height: 48,
              minWidth: 250,
            ),
          ],
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
        body: ImageGallery(
          images: [
            'assets/images/Image Popular Product 1.png',
            'assets/images/ps4_console_white_2.png',
            'assets/images/ps4_console_white_3.png',
            'assets/images/ps4_console_white_4.png',
          ],
        ),

      ),
    );
  }
}
