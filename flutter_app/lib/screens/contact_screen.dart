import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Contacts',
            style: TextStyle(
              color: Colors.grey[800],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ContactCard(
              title: 'Support',
              contactInfo: 'support@example.com\n+1234567890',
            ),
            ContactCard(
              title: 'Address',
              contactInfo: 'Newtown • USA',
            ),
            ContactCard(
              title: 'Phone',
              contactInfo: '+125486237',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String title;
  final String contactInfo;

  const ContactCard({
    required this.title,
    required this.contactInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      shadowColor: Colors.grey,
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          contactInfo,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
