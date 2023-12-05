import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final User user;

  UserScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('User Profile',
            style: TextStyle(
              color: Colors.grey[800],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage(user.photoUrl),
            ),
            SizedBox(height: 20.0),
            Text(
              '${user.firstName} ${user.lastName}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: ${user.email}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              'Phone: +48 513 472 031',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              'Address: Swistackiego 19,\nWroclaw, Poland',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String firstName;
  final String lastName;
  final String email;
  final String photoUrl;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.photoUrl,
  });
}
