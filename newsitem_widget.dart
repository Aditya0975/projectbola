import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;

  NewsItem({
    required this.imageUrl,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(imageUrl),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Text(
            category,
            style: TextStyle(color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
