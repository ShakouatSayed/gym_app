import 'package:flutter/material.dart';
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
              CustomSlideBar(imageUrls: [
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
                onImageTap: (index){},
              ),
              SizedBox(height: dims.height10),
              CustomSlideBar(imageUrls: [
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
                onImageTap: (index){},
              ),

              // Product banners grid
              Padding(
                padding: EdgeInsets.all(dims.height10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _productCard("assets/home/home_img03.jpg", context),
                      SizedBox(width: dims.height2 + 2),
                      _productCard("assets/home/home_img04.jpg", context),
                      SizedBox(width: dims.height2+ 2),
                      _productCard("assets/home/home_img05.jpg", context),
                      SizedBox(width: dims.height2+ 2),
                      _productCard("assets/home/home_img03.jpg", context),
                      SizedBox(width: dims.height2+ 2),
                      _productCard("assets/home/home_img04.jpg", context),
                      SizedBox(width: dims.height2+ 2),
                      _productCard("assets/home/home_img05.jpg", context),
                    ],
                  ),
                ),
              ),

              // Blue actions buttons
              Padding(padding: EdgeInsets.all(dims.height10), child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 _blueButton(Icons.accessibility_new, context),
                 SizedBox(width: dims.width15 - 10),
                 _blueButton(Icons.scale, context),
               ],
              ))

            ],
          ),
        ),
      ),
    );
  }
  static Widget _productCard(String imagePath, BuildContext context){
    final dims = Dimensions(context);
    return ClipRRect(
     borderRadius: BorderRadius.circular(dims.radius15),
      child: Image.asset(
        imagePath,
        width: 110,
        height: 130,
      ),
    );
  }

  static Widget _blueButton(IconData icon, BuildContext context){
    final dims = Dimensions(context);
    return Container(
      width: 100,
      height: 50,
      padding: EdgeInsets.all(dims.height10),
      decoration: BoxDecoration(
        color: Color(0xFF1E6FFF),
        borderRadius: BorderRadius.circular(dims.radius15),
      ),
      child: Icon(icon, color: Colors.white, size: dims.iconSize24),
    );
  }
}
