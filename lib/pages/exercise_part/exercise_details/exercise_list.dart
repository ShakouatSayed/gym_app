import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/arm_page.dart';
import 'package:gym_app/utils/dimensions.dart';

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});
  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    final List<Map<String, dynamic>> exercise = [
      {
        "imagePath": "assets/first_part/sit_up.jpg",
        "title": "Sit Up",
        "duration": "12 min",
        "set": "3 x 12 set",
        "page": ArmPage(),
      },
      {
        "imagePath": "assets/first_part/sit_up.jpg",
        "title": "Sit Up",
        "duration": "12 min",
        "set": "3 x 12 set",
        "page": ArmPage(),
      },
      {
        "imagePath": "assets/first_part/sit_up.jpg",
        "title": "Sit Up",
        "duration": "12 min",
        "set": "3 x 12 set",
        "page": ArmPage(),
      },
      {
        "imagePath": "assets/first_part/sit_up.jpg",
        "title": "Sit Up",
        "duration": "12 min",
        "set": "3 x 12 set",
        "page": ArmPage(),
      },
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: exercise.length,
      itemBuilder: (context, index) {
        final item = exercise[index];
        return Padding(
          padding: EdgeInsets.only(bottom: dims.height10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => item["page"])),
              );
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(dims.radius15),
                  child: Image.asset(
                    item["imagePath"],
                    fit: BoxFit.cover,
                    width: dims.height30 * 3,
                    height: dims.height30 * 3,
                  ),
                ),
                SizedBox(width: dims.width10),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dims.font20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        item["duration"],
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: dims.font16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        item["set"],
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: dims.font16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
