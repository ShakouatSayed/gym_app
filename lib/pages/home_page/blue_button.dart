import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';
import 'package:gym_app/utils/dimensions.dart';

class BlueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const BlueButton({super.key, required this.onPressed, required this.icon});
  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(dims.radius15),
        ),
        minimumSize: Size(dims.width30 + 70, dims.height30),
        padding: EdgeInsets.all(dims.height10),
      ),
      child: Icon(icon, color: Colors.white, size: dims.iconSize24),
    );
  }
}
