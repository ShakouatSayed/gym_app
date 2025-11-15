import 'package:flutter/material.dart';
import 'package:gym_app/utils/dimensions.dart';

class CustomDetails extends StatelessWidget {
  final String exerciseName;
  final String level;
  final String duration;
  final String exerciseCount;
  final String description;
  const CustomDetails({
    super.key,
    required this.exerciseName,
    required this.level,
    required this.duration,
    required this.exerciseCount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    return Column(
      children: [
        Text(
          exerciseName,
          style: TextStyle(
            color: Colors.white,
            fontSize: dims.font20 * 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: dims.height15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Level",
                  style: TextStyle(
                    fontSize: dims.font20 * 1.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  level,
                  style: TextStyle(
                    fontSize: dims.font20 - 2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Duration",
                  style: TextStyle(
                    fontSize: dims.font20 * 1.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: dims.font20 - 2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(
                    fontSize: dims.font20 * 1.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  exerciseCount,
                  style: TextStyle(
                    fontSize: dims.font20 - 2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: dims.height15),

        Text(
          "Description",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: dims.font20 * 1.2,
          ),
        ),
        SizedBox(height: dims.height15),

        Text(
          description,
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.white70, fontSize: dims.font16),
        ),
      ],
    );
  }
}
