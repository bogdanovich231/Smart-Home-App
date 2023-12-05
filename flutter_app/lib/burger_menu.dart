import 'package:flutter/material.dart';
import 'package:flutter_app/screens/user_screen.dart';
import './screens/about_project_screen.dart';
import 'screens/contact_screen.dart';

class BurgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[700]),
            accountName: Text(
              'Tatsiana Kulinkovich',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 15,
              ),
            ),
            accountEmail: Text(
              "kulinkovich56@gmail.com",
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 15,
              ),
            ),
            currentAccountPicture: GestureDetector(
              onTap: () {
                User user = User(
                  firstName: 'Tatsiana',
                  lastName: 'Kulinkovich',
                  email: 'kulinkovich56@gmail.com',
                  photoUrl: 'assets/myphoto.jpg',
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserScreen(user: user),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/myphoto.jpg'),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "About project",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutProjectScreen()),
              );
            },
          ),
          ListTile(
            title: Text(
              "Contact",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
