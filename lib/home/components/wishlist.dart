import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1_register/api_data.dart';

class FavoritesPage extends StatefulWidget {
  final List<Album> favoriteAlbums;

  const FavoritesPage({Key? key, required this.favoriteAlbums}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late List<Album> favoriteAlbums;

  @override
  void initState() {
    super.initState();
    favoriteAlbums = widget.favoriteAlbums;
  }

  @override
  Widget build(BuildContext context) {
    if (favoriteAlbums.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('ALL Favorites'),
        ),
        body: Center(
          child: Text('No favorite albums.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('ALL Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteAlbums.length,
        itemBuilder: (context, index) {
          final album = favoriteAlbums[index];
          return Card(
            child: ListTile(
              leading: Image.network(album.image),
              title: Text(album.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(album.description),
                  Text('\$${album.price}'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: album.isFavourite ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    if (album.isFavourite) {
                      // Remove the album from favorites
                      removeAlbumFromFavorites(album);
                    } else {
                      // Add the album to favorites
                      addAlbumToFavorites(album);
                    }
                  });
                },
              ),
              onTap: () {
                // Additional details to perform when tapping the item
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> addAlbumToFavorites(Album album) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteAlbumsIds = prefs.getStringList('favoriteAlbums');

    if (favoriteAlbumsIds != null) {
      favoriteAlbumsIds.add(album.id.toString());
    } else {
      favoriteAlbumsIds = [album.id.toString()];
    }

    await prefs.setStringList('favoriteAlbums', favoriteAlbumsIds);
    album.isFavourite = true; // Set the item's state to favorite
    setState(() {});
  }

  Future<void> removeAlbumFromFavorites(Album album) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteAlbumsIds = prefs.getStringList('favoriteAlbums');

    if (favoriteAlbumsIds != null) {
      favoriteAlbumsIds.remove(album.id.toString());
      await prefs.setStringList('favoriteAlbums', favoriteAlbumsIds);
      favoriteAlbums.remove(album); // Remove the album from the list
      setState(() {});

    }
  }

}

