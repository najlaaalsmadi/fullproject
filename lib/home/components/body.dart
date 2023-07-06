import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1_register/api_data.dart';
import 'package:task1_register/details_prod/components/bodymain.dart';
import 'package:task1_register/details_prod/components/details_screen.dart';
import 'package:task1_register/size_config.dart';

const kSecondaryColor = Color(0xFFABCDEF);

class Body extends StatefulWidget {

  const Body({Key? key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<Album> albumData;
  late Future<Album> albumData1;
  bool isPressed = false;
  Color btncolor=Colors.white;
  Color bgtncolor=Colors.grey.shade200;
  Color btncolor2=Colors.white;
  Color bgtncolor2=Colors.grey.shade200;
  Color btncolor3=Colors.white;
  Color bgtncolor3=Colors.grey.shade200;

  @override
  void initState() {
    super.initState();
    albumData = fetchAlbum();
    albumData1=fetchAlbum1();
  }


  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  height: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  height: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  height: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  height: 20,
                ),
              ),
            ],
          ),
        ),
        body: Container(

    child: ListView(

    padding: EdgeInsets.symmetric(horizontal: 10),
    children: [
      SizedBox(height: 30),
    Container(
    width: 350,
    height: 100,
    decoration: BoxDecoration(
    color: Color(0xFF4A3298),
    borderRadius: BorderRadius.circular(30.0),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    padding: EdgeInsets.all(10.0),
    child: Text(
    "A Summer surprise",
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.all(10.0),
    child: Text(
    "Cashback 20%",
    style: TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 30),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 50, // Increase the height as desired
                    width: 50, // Increase the width as desired
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE5CC), // Adjust the background color as desired
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(12.0), // Increase the padding as desired
                    child: Container(
                      height: 30, // Adjust the height as desired
                      child: SvgPicture.asset(
                        "assets/icons/Flash Icon.svg",
                        height: 22, // Adjust the height as desired
                      ),
                    ),
                  ),
                  SizedBox(height: 6), // Increase the spacing as desired
                  Text(
                    "Flash Deal",
                    style: TextStyle(
                      fontSize: 15, // Increase the font size as desired
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12), // Increase the spacing as desired
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 50, // Increase the height as desired
                    width: 50, // Increase the width as desired
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE5CC), // Adjust the background color as desired
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(12.0), // Increase the padding as desired
                    child: Container(
                      height: 30, // Adjust the height as desired
                      child: SvgPicture.asset(
                        "assets/icons/Bill Icon.svg",
                        height: 22, // Adjust the height as desired
                      ),
                    ),
                  ),
                  SizedBox(height: 6), // Increase the spacing as desired
                  Text(
                    "Bill",
                    style: TextStyle(
                      fontSize: 15, // Increase the font size as desired
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12), // Increase the spacing as desired
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 50, // Increase the height as desired
                    width: 50, // Increase the width as desired
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE5CC), // Adjust the background color as desired
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(12.0), // Increase the padding as desired
                    child: Container(
                      height: 30, // Adjust the height as desired
                      child: SvgPicture.asset(
                        "assets/icons/Game Icon.svg",
                        height: 22, // Adjust the height as desired
                      ),
                    ),
                  ),
                  SizedBox(height: 6), // Increase the spacing as desired
                  Text(
                    "Game",
                    style: TextStyle(
                      fontSize: 15, // Increase the font size as desired
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12), // Increase the spacing as desired
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE5CC),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      height: 30,
                      child: SvgPicture.asset(
                        "assets/icons/Gift Icon.svg",
                        height: 22,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Daily  Gift",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 12), // Increase the spacing as desired
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    height: 50, // Increase the height as desired
                    width: 50, // Increase the width as desired
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE5CC), // Adjust the background color as desired
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(12.0), // Increase the padding as desired
                    child: Container(
                      height: 30, // Adjust the height as desired
                      child: SvgPicture.asset(
                        "assets/icons/Discover.svg",
                        height: 22, // Adjust the height as desired
                      ),
                    ),
                  ),
                  SizedBox(height: 6), // Increase the spacing as desired
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 15, // Increase the font size as desired
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30), // Add spacing between the previous section and the new section
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                child: Text(
                  "Special for you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,

                  ),
                ),
              ),
              Container(

                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "See More",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


      // Add your new content here
    // Example:
    // Text("New Content"),
    // SizedBox(height: 10),
    // SomeWidget(),
      SizedBox(height: 30),

      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.white), // Add white border
                ),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your custom function here
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('assets/images/Image Banner 2.png'),
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2), // Set the light gray color with opacity
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "smartphone",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5), // Add a black shadow to enhance text visibility
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: Text(
                        "18 Brands",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5), // Add a black shadow to enhance text visibility
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.white), // Add white border
                ),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your custom function here
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('assets/images/Image Banner 3.png'),
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2), // Set the light gray color with opacity
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "Fashion",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5), // Add a black shadow to enhance text visibility
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: Text(
                        "24 Brands",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5), // Add a black shadow to enhance text visibility
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),



      SizedBox(height: 30), // Add spacing between the previous section and the new section
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                child: Text(
                  "Popular Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(

                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "See More",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dateles()),
                    );
                  },
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: FutureBuilder<Album>(
                      future: albumData1,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: ClipRRect( // Add ClipRRect here
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.network(
                                    snapshot.data!.image,
                                    width: double.infinity,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data!.title,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${snapshot.data!.price.toString()}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                          ),
                                        ),

                                        Container(
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
                                              size: 15,
                                            ),
                                          ),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: bgtncolor,
                                            shape: BoxShape.circle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ),




                SizedBox(width: 10),
                GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dateles()),
                    );
                  },
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: FutureBuilder<Album>(
                      future: albumData,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: ClipRRect( // Add ClipRRect here
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.network(
                                    snapshot.data!.image,
                                    width: double.infinity,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data!.title,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${snapshot.data!.price.toString()}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                          ),
                                        ),

                                        Container(
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
                                              size: 15,
                                            ),
                                          ),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: bgtncolor,
                                            shape: BoxShape.circle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ),

                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Handle product card tap
                  },
                  child: Container(

                    width: 150,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: Colors.white),
                          ),

                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              "assets/images/ps4_console_white_1.png",
                              height: 100,
                              width: double.infinity,

                            ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wireless Controller",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "for PS4",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "\$64.99",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          if (isPressed) {
                                            btncolor3 = Colors.white;            // لون الأيقونة الأصلي
                                            bgtncolor3 = Colors.grey.shade100;   // لون خلفية الزر الأصلي
                                          } else {
                                            btncolor3 = Colors.red;              // لون الأيقونة عند الضغط على الزر
                                            bgtncolor3 = Colors.red.shade200;    // لون خلفية الزر عند الضغط على الزر
                                          }
                                          isPressed = !isPressed;                // تبديل قيمة الحالة
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: btncolor3,
                                        size: 15,
                                      ),
                                    ),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: bgtncolor3,
                                      shape: BoxShape.circle,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ],
    ),
    ),
    ),
    );
  }}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,

      title: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 30),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade100,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/Search Icon.svg",
                    height: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search product',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
                height: 20,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade100,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/Bell.svg',
                    height: 20,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: -5,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
