import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingTimeline extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final Color activeColor;
  final Color inactiveColor;

  const TrackingTimeline({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.activeColor = const Color(0xFF0D47A1),
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(totalSteps, (index) {
          final bool isActive = index <= currentStep;
          final Color dotColor = isActive ? activeColor : inactiveColor;
          final Color lineColor = isActive ? activeColor : inactiveColor;

          return Expanded(
            child: Row(
              children: [
                // The dot
                Container(
                  width: 15.w,
                  height: 15.w,
                  decoration: BoxDecoration(
                    color: dotColor,
                    shape: BoxShape.circle,
                  ),
                ),
                // The line (if not the last step)
                if (index < totalSteps - 1)
                  Expanded(
                    child: Container(
                      height: 4.h,
                      color: lineColor,
                    ),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}


