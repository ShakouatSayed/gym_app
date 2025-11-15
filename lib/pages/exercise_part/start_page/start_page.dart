import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/exercise_details/exercise_detail_sheet.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_focus_section.dart';
import 'package:gym_app/pages/exercise_part/start_page/choice_section.dart';
import 'package:gym_app/utils/dimensions.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                flexibleSpace: Container(
                  padding: EdgeInsets.all(dims.height10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF4D8BFF), Color(0xFF1E6FFF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: dims.iconSize24,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: dims.width10),
                          Text(
                            "FIND",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: dims.font20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: dims.iconSize24,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: dims.height15),

              // Banner Image
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => ExerciseDetailSheet(),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(dims.height10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(dims.radius20),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          "assets/first_part/abs.jpg",
                          fit: BoxFit.cover,
                          height: dims.height80 + 80,
                          width: double.infinity,
                        ),
                        Text(
                          "Only 4 abs Moves for You",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Choice Section
              ChoiceSection(),

              // Body Focus Section
              BodyFocusSection(),
            ],
          ),
        ),
      ),
    );
  }
}
