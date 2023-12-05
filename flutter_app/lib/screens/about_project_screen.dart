import 'package:flutter/material.dart';

class AboutProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('About Project',
            style: TextStyle(
              color: Colors.grey[800],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'This application is a mobile app designed for managing a smart home with the capability of creating and using a personal account. It was developed for the purpose of learning and out of a deep interest in the world of mobile development. The motivation behind it was the desire to gain new knowledge and apply it in the creation of a mobile application.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
