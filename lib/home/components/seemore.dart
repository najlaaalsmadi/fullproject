import 'dart:convert';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:task1_register/api_data.dart';
import 'package:task1_register/constants.dart';
import 'package:task1_register/details_prod/components/bodymain.dart';
import 'package:task1_register/home/components/body.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1_register/home/components/wishlist.dart';
import 'package:task1_register/profile/profle.dart';
import 'package:task1_register/theme.dart';

// استدعاء بيانات الألبومات من الواجهة الخلفية
Future<List<Album>> fetchAlbum() async {
  const kSecondaryColor = Color(0xFFABCDEF);
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    List<Album> albums = data.map((json) => Album.fromJson(json)).toList();
    return albums;
  } else {
    throw Exception("فشل في تحميل الألبومات");
  }
}

class SeeMore extends StatefulWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  late Future<List<Album>> albumData;
  List<Album> favoriteAlbums = [];
  ThemeClass _themeClass = ThemeClass();

  @override
  void initState() {
    super.initState();
    albumData = fetchAlbum();
    loadFavoriteAlbums();
  }

  void updateFavoriteAlbums() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteAlbumsIds =
    favoriteAlbums.map((album) => album.id.toString()).toList();
    await prefs.setStringList('favoriteAlbums', favoriteAlbumsIds);
  }

  void loadFavoriteAlbums() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteAlbumsIds = prefs.getStringList('favoriteAlbums');

    if (favoriteAlbumsIds != null) {
      // تحميل الألبومات المفضلة استنادًا إلى قائمة المعرفات المحفوظة
      favoriteAlbums = (await albumData).where((album) => favoriteAlbumsIds.contains(album.id.toString())).toList();
    } else {
      favoriteAlbums = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.ligthTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // شريط التنقل
              Expanded(
                child: FutureBuilder<List<Album>>(
                  future: albumData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var album = snapshot.data![index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => dateles(album: album,),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.white),
                              ),
                              child: Container(
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // صورة الألبوم
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: SizedBox(
                                        width: 200.0,
                                        height: 200.0,
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(
                                            album.image,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 8),
                                          // عنوان الألبوم
                                          Text(
                                            album.title,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              // سعر الألبوم
                                              Text(
                                                '\$${album.price}',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(width: 8),

                                              InkWell(
                                                borderRadius: BorderRadius.circular(50),
                                                onTap: () {
                                                  setState(() {
                                                    album.toggleFavourite();
                                                    if (album.isFavourite) {
                                                      favoriteAlbums.add(album);
                                                    } else {
                                                      favoriteAlbums.remove(album);
                                                    }
                                                    updateFavoriteAlbums(); // حفظ القائمة المفضلة المحدثة
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(8),
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    color: album.isFavourite
                                                        ? kPrimaryColor.withOpacity(0.15)
                                                        : kSecondaryColor.withOpacity(0.1),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      album.isFavourite ? Icons.favorite : Icons.favorite_border,
                                                      color: album.isFavourite ? Colors.red : Colors.grey,
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // تقييم الألبوم
                                          Row(
                                            children: [
                                              Icon(Icons.star,color: Colors.orangeAccent,),
                                              Text(
                                                '${album.rating}',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text("خطأ: ${snapshot.error}");
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        appBar: CustomAppBar(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: _themeClass.lightPrimaryColor,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritesPage(favoriteAlbums: favoriteAlbums,),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAppprofile(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                height: 20,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
