
class Album {
  final int id;
  final String title, description;
  final String image;
  final double rating, price;
  bool isFavourite, isPopular;
  Album({


    required this.id,
    required this.image,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });

  void toggleFavourite() {
    isFavourite = !isFavourite;
  }

  factory Album.fromJson(Map<String, dynamic> json) {
    // قم بفحص إذا ما كانت القيمة تأتي بالشكل الصحيح أم لا
    if (json['rating'] is Map<String, dynamic>) {
      var ratingData = json['rating'] as Map<String, dynamic>;
      var rate = double.parse(ratingData['rate'].toString());
      var count = ratingData['count'] as int;
      return Album(
        image: json['image'],
        id: json['id'],
        title: json['title'],
        price: double.parse(json['price'].toString()),
        description: json['description'],
        rating: rate,
      );
    } else {
      return Album(
        image: json['image'],
        id: json['id'],
        title: json['title'],
        price: double.parse(json['price'].toString()),
        description: json['description'],
        rating: double.parse(json['rating'].toString()),
      );
    }
  }


}
