import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/start_page/buttom_bar.dart';
import 'package:gym_app/pages/home_page/blue_button.dart';
import 'package:gym_app/pages/home_page/product_card.dart';
import 'package:gym_app/utils/dimensions.dart';
import 'package:gym_app/widgets/slide_bar.dart';

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
          child: Column(
            children: [
              CustomSlideBar(
                imageUrls: [
                  "assets/home/home_img01.jpg",
                  "assets/home/home_img01.jpg",
                  "assets/home/home_img01.jpg",
                ],
                height: 200,
                width: double.infinity,
                dotHeight: 5,
                dotWidth: 30,
                autoSlideDuration: Duration(days: 365),
                activeDotColor: Colors.black,
                inactiveDotColor: Colors.grey,
                onImageTap: (index) {},
              ),
              SizedBox(height: dims.height10),
              CustomSlideBar(
                imageUrls: [
                  "assets/home/home_img02.jpg",
                  "assets/home/home_img02.jpg",
                  "assets/home/home_img02.jpg",
                ],
                height: 200,
                padding: EdgeInsets.all(dims.height10),
                dotHeight: 5,
                dotWidth: 30,
                autoSlideDuration: Duration(days: 365),
                activeDotColor: Colors.black,
                inactiveDotColor: Colors.grey,
                borderRadius: BorderRadius.circular(dims.radius15),
                onImageTap: (index) {},
              ),

              // Product banners grid
              Padding(
                padding: EdgeInsets.all(dims.height10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(imagePath: "assets/home/home_img03.jpg"),
                      SizedBox(width: dims.height2 + 2),
                      ProductCard(imagePath: "assets/home/home_img04.jpg"),
                      SizedBox(width: dims.height2 + 2),
                      ProductCard(imagePath: "assets/home/home_img05.jpg"),
                      SizedBox(width: dims.height2 + 2),
                      ProductCard(imagePath: "assets/home/home_img03.jpg"),
                      SizedBox(width: dims.height2 + 2),
                      ProductCard(imagePath: "assets/home/home_img04.jpg"),
                      SizedBox(width: dims.height2 + 2),
                      ProductCard(imagePath: "assets/home/home_img05.jpg"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: dims.height30),
              // Blue actions buttons
              Padding(
                padding: EdgeInsets.all(dims.height10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlueButton(
                      icon: Icons.accessibility_new,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ButtonNavigationBarExercise(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: dims.width15 - 10),
                    BlueButton(
                      icon: Icons.scale,
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage()))
                      },
                    ),
                    SizedBox(height: dims.height20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
