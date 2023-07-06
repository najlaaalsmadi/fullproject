import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products/2"),

  );
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load album");
  }
}
Future<Album> fetchAlbum1() async {
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products/3"),

  );
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load album");
  }
}
class Album {
  final String image;
  final int id;
  final String title;
  final double price;

  const Album({
    required this.image,
    required this.id,
    required this.title,
    required this.price,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      image: json['image'],
      id: json['id'],
      title: json['title'],
      price: json['price'],
    );
  }
}
