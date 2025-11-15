import 'package:flutter/material.dart';
import 'package:gym_app/utils/dimensions.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  const ProductCard({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    final dims = Dimensions(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(dims.radius15),
      child: Image.asset(imagePath, width: 110, height: 130),
    );
  }
}
