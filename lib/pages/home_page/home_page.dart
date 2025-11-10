import 'package:flutter/material.dart';
import 'package:gym_app/utils/dimentions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(dims.height10)),
        ),
      ),
    );
  }
}
