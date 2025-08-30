import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  final Color activeColor;
  final Color inactiveColor;

  const ProgressBar({
    super.key,
    required this.progress,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: Stack(
        children: [
          Container(
            height: 8.h,
            decoration: BoxDecoration(
              color: inactiveColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          FractionallySizedBox(
            widthFactor: progress,
            child: Container(
              height: 8.h,
              decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}