import 'package:flutter/material.dart';
import 'package:flutter_app/device_box.dart';
import 'package:flutter_app/screens/user_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'burger_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  List mySmartDevices = [
    ["Smart light", Icons.light_mode, true],
    ["Smart AC", Icons.ac_unit_sharp, false],
    ["Smart TV", Icons.tv, false],
    ["Smart Fan", Icons.mode_fan_off_sharp, false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: BurgerMenu(),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 25,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 45,
                          color: Colors.grey[800],
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.person,
                          size: 45,
                          color: Colors.grey[800],
                        ),
                        onPressed: () {
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
                      ),
                    ])),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Home,",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500],
                        )),
                    Text(
                      "TATSIANA",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 72,
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Smart Devices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: mySmartDevices.length,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(25),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return DeviceBox(
                        deviceName: mySmartDevices[index][0],
                        iconData: mySmartDevices[index][1],
                        powerOn: mySmartDevices[index][2],
                        onChanged: (value) => powerSwitchChanged(value, index),
                      );
                    }))
          ],
        )));
  }
}
