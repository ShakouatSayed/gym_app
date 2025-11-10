import 'package:flutter/material.dart';
import 'package:gym_app/pages/home_page/home_page.dart';

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({super.key});
  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background  Color
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int val) {
          setState(() => _currentIndex = val);
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.contacts_outlined),
            label: "Contact",
          ),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.location_on_sharp),
            label: "Location",
          ),
        ],
      ),
      body: <Widget>[
        //ContactPage(),
        HomePage(),
        //LocationPage(),
      ][_currentIndex],
    );
  }
}
