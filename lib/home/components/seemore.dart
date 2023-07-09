import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:task1_register/api_data.dart';
import 'package:task1_register/constants.dart';
import 'package:task1_register/details_prod/components/bodymain.dart';
import 'package:task1_register/home/components/body.dart';

void main() {
  runApp(SeeMore());
}

Future<List<Album>> fetchAlbum() async {
  const kSecondaryColor = Color(0xFFABCDEF);
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    List<Album> albums = data.map((json) => Album.fromJson(json)).toList();
    return albums;
  } else {
    throw Exception("Failed to load albums");
  }
}

class SeeMore extends StatefulWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  late Future<List<Album>> albumData;

  @override
  void initState() {
    super.initState();
    albumData = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Body(),
                        ),
                      );
                    },
                  ),
                  Center(
                    child: Text(
                      'All Products',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ],
              ),
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
                                  builder: (context) => dateles(),
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
                                                      album.isFavourite
                                                          ? Icons.favorite
                                                          : Icons.favorite_border,
                                                      color: album.isFavourite ? Colors.red : Colors.grey,
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                      return Text("Error: ${snapshot.error}");
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
