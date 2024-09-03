import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'BERITA TERBARU',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'LIVE PELELANGAN BURUNG',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
