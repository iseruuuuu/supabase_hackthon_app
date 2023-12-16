import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    required this.loading,
    super.key,
  });

  final bool loading;

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return AbsorbPointer(
        child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: LoadingAnimationWidget.dotsTriangle(
                      color: Colors.deepPurple,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
      );
    } else {
      return SizedBox();
    }
  }
}
