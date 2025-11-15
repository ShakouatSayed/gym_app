import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/abs_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/arm_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/back_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/chest_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/leg_page.dart';
import 'package:gym_app/pages/exercise_part/start_page/body_fucas_page/shoulder_page.dart';
import 'package:gym_app/utils/dimensions.dart';

class BodyFocusSection extends StatelessWidget {
  const BodyFocusSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    final List<String> parts = [
      "CHEST",
      "ABS",
      "ARM",
      "BACK",
      "LEG",
      "SHOULDER",
    ];

    // Mapping : Which name -> which page
    final Map<String, Widget> partPages = {
      "CHEST": ChestPage(),
      "ABS": AbsPage(),
      "ARM": ArmPage(),
      "BACK": BackPage(),
      "LEG": LegPage(),
      "SHOULDER": ShoulderPage(),
    };
    return Padding(
      padding: EdgeInsets.all(dims.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Body Focus",
            style: TextStyle(
              fontSize: dims.font20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: dims.height15),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: parts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.7,
            ),

            itemBuilder: (context, index) {
              String name = parts[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => partPages[name]!),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(dims.height10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF1E6FFF), Color(0xFF0050FF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(dims.radius15),
                  ),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: dims.font16,
                    ),
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
