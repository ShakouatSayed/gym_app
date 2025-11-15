import 'package:flutter/material.dart';
import 'package:gym_app/pages/exercise_part/exercise_details/custom_details.dart';
import 'package:gym_app/pages/exercise_part/exercise_details/exercise_list.dart';
import 'package:gym_app/utils/dimensions.dart';

class ExerciseDetailSheet extends StatelessWidget {
  const ExerciseDetailSheet({super.key});
  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Stack(
          children: [
            // Exercise image
            ClipRRect(
              //borderRadius: BorderRadius.circular(dims.radius15),
              child: Image.asset(
                "assets/first_part/abs.jpg",
                fit: BoxFit.cover,
                height: dims.height15 * 10,
                width: double.infinity,
              ),
            ),

            Positioned(
              top: dims.height10 * 12,
              left: 0,
              right: 0,
              child: Container(
                height: dims.screenHeight,
                decoration: BoxDecoration(
                  color: Color(0xFF1E6FFF),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(dims.radius30),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: EdgeInsets.all(dims.height10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top handle bar
                      Center(
                        child: Container(
                          width: dims.width30 * 5,
                          height: dims.height10,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(dims.radius15),
                          ),
                        ),
                      ),
                      SizedBox(height: dims.height15),
                      CustomDetails(
                        exerciseName: 'Exercise Name',
                        level: 'Begginer',
                        duration: '20 min',
                        exerciseCount: '4',
                        description:
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-',
                      ),
                      SizedBox(height: dims.height15),

                      // Exercise List
                      ExerciseList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
