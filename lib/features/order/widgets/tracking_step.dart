import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/constants/colors.dart';
import 'package:flutter_interview_task/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TrackingStep extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final bool isCompleted;

  const TrackingStep({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final titleColor = isCompleted ? Colors.black : Colors.grey;
    final descriptionColor = isCompleted ? Colors.grey[600] : Colors.grey[400];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: titleColor,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: descriptionColor,
                  ),
                ),
             ],
            ),
          ),
        ],
      ),
    );
  }
}