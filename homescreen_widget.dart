import 'package:flutter/material.dart';
import 'package:project_burung/newsitem_widget.dart';
import 'package:project_burung/tabbarsection_widget.dart';

import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BirdWeb'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            // TabBar Section
            TabBarSection(),
            // First News Item
            NewsItem(
              imageUrl:
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              title: 'Burung yang hampir punah terlihat di Kalimantan Utara',
              category: 'Kalimantan, 15 September 1971',
              isMain: true, // News Item utama
            ),
            // Second News Item
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), 
              children: [
                SmallNewsItem(
                  imageUrl:
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  title:
                      '5 Jenis Burung Termahal Di Dunia',
                  category: 'Jakarta, 17 April 1984',
                ),
                SmallNewsItem(
                  imageUrl:
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  title:
                      'Cara Merawat Burung',
                  category: 'Bandung, 17 April 1955',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "BERITA TERBARU",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "LIVE PELELANGAN BURUNG",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final bool isMain;

  NewsItem({
    required this.imageUrl,
    required this.title,
    required this.category,
    this.isMain = false, // Defaultnya bukan item utama
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Image.network(imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    category,
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallNewsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;

  SmallNewsItem({
    required this.imageUrl,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            // Gambar di sebelah kiri
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            // Text di sebelah kanan
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      category,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreenWidget(),
  ));
}
