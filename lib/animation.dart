import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class ImageTransitionWidget extends StatelessWidget {
  final String imagePath;

  ImageTransitionWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      closedColor: Colors.transparent,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return GestureDetector(
          onTap: openContainer,
          child: Image.asset(
            imagePath,
            // width: 100,
            // height: 100,
          ),
        );
      },
      openBuilder: (BuildContext _, VoidCallback closeContainer) {
        return Scaffold(
          body: GestureDetector(
            onTap: closeContainer,
            child: Center(
              child: Image.asset(
                imagePath,
                // width: 200,
                // height: 200,
              ),
            ),
          ),
        );
      },
    );
  }
}
