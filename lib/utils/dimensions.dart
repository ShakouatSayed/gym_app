import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  final BuildContext context;
  Dimensions(this.context);

  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;

  // 683.43/220 = 3.10
  double get pageView => screenHeight / 2.64;
  double get pageViewContainer => screenHeight / 3.84;
  double get pageViewTextContainer => screenHeight / 7.03;

  //dynamic height padding and margin
  double get height2 => screenHeight / 422;
  double get height10 => screenHeight / 84.4;
  double get height15 => screenHeight / 56.27;
  double get height20 => screenHeight / 42.2;
  double get height30 => screenHeight / 28.13;
  double get height45 => screenHeight / 18.76;
  double get height80 => screenHeight / 10.55;
  double get height350 => screenHeight / 2.42;

  //dynamic width padding and margin
  double get width10 => screenHeight / 84.4;
  double get width15 => screenHeight / 56.27;
  double get width20 => screenHeight / 42.2;
  double get width30 => screenHeight / 28.13;

  //font size
  double get font12 => screenHeight / 70.33;
  double get font16 => screenHeight / 52.75;
  double get font20 => screenHeight / 42.2;
  double get font26 => screenHeight / 32.46;

  //radius
  double get radius15 => screenHeight / 56.27;
  double get radius20 => screenHeight / 42.2;
  double get radius30 => screenHeight / 28.31;

  //icon size
  double get iconSize24 => screenHeight / 35.17;
  double get iconSize16 => screenHeight / 52.75;

  //list view size
  double get listViewImgSize => screenWidth / 3.25;
  double get listViewTextConSize => screenWidth / 3.9;

  //bottom height
  double get bottomHeightBar => screenHeight / 7.03;
}
