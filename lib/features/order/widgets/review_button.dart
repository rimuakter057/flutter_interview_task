// lib/widgets/review_button.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';

class ReviewButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ReviewButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accent,
        foregroundColor: AppColors.background,
        minimumSize: Size(80.w, 35.h), // Custom small size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      ),
      child: Text(
        'Review',
        style: AppTextStyles.buttonText.copyWith(fontSize: 14.sp), // Smaller font size
      ),
    );
  }
}