import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First Child
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://clubprana.com/wp-content/uploads/2020/10/Club-4th-min.jpg',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Container(
            color: Colors.pink.withOpacity(0.5),
          ),

          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook_outlined,
                  size: 48.0,
                  color: Colors.white,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
