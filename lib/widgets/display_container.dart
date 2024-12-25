import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final String itext;
  final String imageurl;

  // Constructor to pass dynamic text and image URL
  const MainContainer({super.key, required this.itext, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), 
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          image: DecorationImage(
            image: AssetImage(imageurl),
            fit: BoxFit.cover, 
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken), 
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0), 
          child: Align(
            alignment: Alignment.bottomLeft, 
            child: Text(
              itext, 
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
