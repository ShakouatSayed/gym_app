import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gym_app/utils/dimensions.dart';

class CustomSlideBar extends StatefulWidget {
  final List<String> imageUrls;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double dotHeight;
  final double dotWidth;
  final Color activeDotColor;
  final Color inactiveDotColor;
  final Duration autoSlideDuration;
  final BorderRadiusGeometry borderRadius;
  final BoxFit imageFit;
  final Function(int)? onImageTap;

  const CustomSlideBar({
    super.key,
    required this.imageUrls,
    this.height = 200,
    this.width = double.infinity,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.dotHeight = 10,
    this.dotWidth = 10,
    this.activeDotColor = Colors.black,
    this.inactiveDotColor = Colors.grey,
    this.autoSlideDuration = const Duration(seconds: 3),
    this.borderRadius = BorderRadius.zero,
    this.imageFit = BoxFit.cover,
    this.onImageTap,
  });

  @override
  State<CustomSlideBar> createState() => _CustomSlideBarState();
}

class _CustomSlideBarState extends State<CustomSlideBar> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    if (widget.imageUrls.length <= 1) return;
    // Auto-slide setup
    _timer = Timer.periodic(widget.autoSlideDuration, (timer) {
      if (_pageController.hasClients) {
        final nextPage = _currentPage + 1;
        if (nextPage < widget.imageUrls.length) {
          _pageController.animateToPage(
            nextPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        } else {
          _pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  void _onChanged(int index) {
    setState(() => _currentPage = index);
  }

  void _handleTap(TapDownDetails details, int currentIndex) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double tapX = details.globalPosition.dx;

    // If tap on left 40% of screen, go to previous slide
    if (tapX < screenWidth * 0.4) {
      _goToPreviousSlide();
    } else if (tapX > screenWidth * 0.6) {
      // // If tap in center 60%, trigger onImageTap callback
      _goToNextSlide();
    } else {
      // if tap in center 20%, trigger onImageTap callback
      widget.onImageTap?.call(currentIndex);
    }
  }

  void _goToNextSlide() {
    if (_pageController.hasClients) {
      final nextPage = _currentPage + 1;
      if (nextPage < widget.imageUrls.length) {
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  void _goToPreviousSlide() {
    if (_pageController.hasClients) {
      final previousPage = _currentPage - 1;
      if (previousPage >= 0) {
        _pageController.animateToPage(
          previousPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.animateToPage(
          widget.imageUrls.length - 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final dims = Dimensions(context);
    return Container(
      height: widget.height,
      width: widget.width,
      margin: widget.margin,
      padding: widget.padding,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: widget.borderRadius,
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.imageUrls.length,
                onPageChanged: _onChanged,
                itemBuilder: (context, index) {
                  return _buildImageItem(widget.imageUrls[index], index);
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          if (widget.imageUrls.length > 1) _buildDotsIndicator(),
        ],
      ),
    );
  }

  Widget _buildImageItem(String imageUrl, int index) {
    return GestureDetector(
      onTapDown: (details) => _handleTap(details, index),
      child: Image.asset(
        imageUrl,
        fit: widget.imageFit,
        errorBuilder: (context, child, progress) {
          return GestureDetector(
            onTapDown: (details) => _handleTap(details, index),
            child: Center(
              child: Icon(Icons.broken_image, color: Colors.grey, size: 30),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDotsIndicator() {
    final dims = Dimensions(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.imageUrls.length, (index) {
        final isActive = index == _currentPage;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.all(dims.height2 * 2),
            height: widget.dotHeight,
            width: isActive ? widget.dotWidth * 1.5 : widget.dotWidth,
            decoration: BoxDecoration(
              color: isActive ? widget.activeDotColor : widget.inactiveDotColor,
              borderRadius: BorderRadius.circular(widget.dotHeight / 2),
            ),
          ),
        );
      }),
    );
  }
}
