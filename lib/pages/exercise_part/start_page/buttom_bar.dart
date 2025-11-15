import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/start_page/start_page.dart';

class ButtonNavigationBarExercise extends StatefulWidget {
  const ButtonNavigationBarExercise({super.key});
  @override
  State<ButtonNavigationBarExercise> createState() =>
      _ButtonNavigationBarExerciseState();
}

class _ButtonNavigationBarExerciseState
    extends State<ButtonNavigationBarExercise> {
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
        StartPage(),
        //LocationPage(),
        //ContactPage(),
      ][_currentIndex],
    );
  }
}
