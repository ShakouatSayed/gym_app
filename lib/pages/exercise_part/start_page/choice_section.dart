import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/abs_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/arm_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/back_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/leg_page.dart';
import 'package:gym_app/utils/dimensions.dart';

class ChoiceSection extends StatelessWidget {
  const ChoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);

    final List<Map<String, dynamic>> choices = [
      {
        "name": "Push Up",
        "image": "assets/first_part/push_up.jpg",
        "page": ArmPage(),
      },
      {
        "name": "ABS Workout",
        "image": "assets/first_part/push_up.jpg",
        "page": AbsPage(),
      },
      {
        "name": "Plank",
        "image": "assets/first_part/push_up.jpg",
        "page": LegPage(),
      },
      {
        "name": "Leg Wrokout",
        "image": "assets/first_part/push_up.jpg",
        "page": BackPage(),
      },
    ];

    return Padding(
      padding: EdgeInsets.all(dims.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The Choice for You",
            style: TextStyle(
              fontSize: dims.font20,
              fontWeight: FontWeight.bold,
            ),
          ),

          // 2-column grid
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: choices.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.6,
            ),
            itemBuilder: (context, index) {
              final item = choices[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => item["page"]),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(dims.radius15),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(dims.radius15),
                        child: Image.asset(
                          item["image"],
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
                              item["name"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: dims.font16,
                              ),
                            ),
                            SizedBox(height: dims.height2),

                            Text(
                              "12 min",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "3 x 12 set",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
