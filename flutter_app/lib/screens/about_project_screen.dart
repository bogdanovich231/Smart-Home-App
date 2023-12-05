import 'package:flutter/material.dart';

class AboutProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Project',
            style: TextStyle(
              color: Colors.grey[700],
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
                color: Colors.grey, // Цвет блика
                spreadRadius: 5, // Распределение блика
                blurRadius: 15, // Размытие блика
                offset: Offset(0, 0), // Смещение блика
              ),
            ],
          ),
          child: Center(
            child: Text(
              'This application is a mobile app designed for managing a smart home with the capability of creating and using a personal account. It was developed for the purpose of learning and out of a deep interest in the world of mobile development. The motivation behind it was the desire to gain new knowledge and apply it in the creation of a mobile application.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Цвет текста
              ),
            ),
          ),
        ),
      ),
    );
  }
}
