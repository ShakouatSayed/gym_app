import 'package:flutter/material.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({super.key});
  // Widget _buildSlideBar(int index, ProductModel popularProduct) {
  //   Matrix4 matrix = new Matrix4.identity();
  //   if (index == _currPageValue.floor()) {
  //     var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
  //     var currTrans = _height * (1 - currScale) / 2;
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
  //       ..setTranslationRaw(0, currTrans, 0);
  //   } else if (index == _currPageValue.floor() + 1) {
  //     var currScale =
  //         _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
  //     var currTrans = _height * (1 - currScale) / 2;
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1);
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
  //       ..setTranslationRaw(0, currTrans, 0);
  //   } else if (index == _currPageValue.floor() - 1) {
  //     var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
  //     var currTrans = _height * (1 - currScale) / 2;
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1);
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
  //       ..setTranslationRaw(0, currTrans, 0);
  //   } else {
  //     var currScale = 0.8;
  //     matrix = Matrix4.diagonal3Values(1, currScale, 1)
  //       ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
  //   }
  //
  //   //var index;
  //   return Transform(
  //     transform: matrix,
  //     child: Stack(
  //       children: <Widget>[
  //         GestureDetector(
  //           onTap: () {
  //             Get.toNamed(RouteHelper.getPopularFood(index, "home"));
  //           },
  //           child: CachedNetworkImage(
  //             imageUrl: AppConstants.BASE_URL +
  //                 AppConstants.UPLOAD_URI +
  //                 popularProduct.img!,
  //             imageBuilder: (context, imageProvider) => Container(
  //               height: Dimensions.pageViewContainer,
  //               margin: EdgeInsets.only(
  //                   left: Dimensions.width10, right: Dimensions.width10),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(Dimensions.radius30),
  //                 image: DecorationImage(
  //                   image: imageProvider,
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //             errorWidget: (context, url, error) => Image.network(
  //                 AppConstants.BASE_URL +
  //                     AppConstants.UPLOAD_URI +
  //                     popularProduct.img!),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.bottomCenter,
  //           child: Container(
  //             height: 120,
  //             margin: EdgeInsets.only(
  //                 left: Dimensions.width30,
  //                 right: Dimensions.width30,
  //                 bottom: Dimensions.height30),
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(Dimensions.radius20),
  //                 color: Colors.white,
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: Color(0xFFe8e8e8),
  //                     blurRadius: 5.0,
  //                     offset: Offset(0, 5),
  //                   ),
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: Offset(-5, 0),
  //                   ),
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: Offset(5, 0),
  //                   )
  //                 ]),
  //             child: Container(
  //               padding: EdgeInsets.only(
  //                   top: Dimensions.height15, left: 15, right: 15),
  //               child: AppColumn(
  //                 text: popularProduct.name!,
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
