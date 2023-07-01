import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int dotCount;
  final int currentIndex;
  final DotDecorator decorator;

  DotIndicator({
    required this.dotCount,
    required this.currentIndex,
    required this.decorator,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dotCount,
            (index) => buildDot(index),
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: currentIndex == index ? decorator.activeSize.width : decorator.size.width,
      height: currentIndex == index ? decorator.activeSize.height : decorator.size.height,
      decoration: currentIndex == index ? decorator.activeDecoration : decorator.inactiveDecoration,
    );
  }
}

class DotDecorator {
  final Decoration activeDecoration;
  final Decoration inactiveDecoration;
  final Size size;
  final Size activeSize;

  DotDecorator({
    required this.activeDecoration,
    required this.inactiveDecoration,
    required this.size,
    required this.activeSize,
  });
}
