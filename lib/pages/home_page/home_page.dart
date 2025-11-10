import 'package:flutter/material.dart';
import 'package:gym_app/utils/dimentions.dart';
import 'package:gym_app/widgets/slide_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //final dims = Dimensions(context);
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
          child: Padding(padding: EdgeInsets.all(10), child: Column(
            children: [
              CustomSlideBar(imageUrls: [
                "assets/home/home_img01.jpg",
                "assets/home/home_img01.jpg",
                "assets/home/home_img01.jpg",
              ],
                height: 80,
                //width: double.infinity,
                padding: EdgeInsets.all(80),
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.black,
                inactiveDotColor: Colors.grey,
              )
            ],
          )),
        ),
      ),
    );
  }
}
