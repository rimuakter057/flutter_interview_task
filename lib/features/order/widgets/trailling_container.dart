// lib/widgets/trailing_status_container.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';


class TrailingStatusContainer extends StatelessWidget {
  final String statusText;
  final Color backgroundColor;
  final Color textColor;

  const TrailingStatusContainer({
    super.key,
    required this.statusText,
    required this.backgroundColor,
    this.textColor = AppColors.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        statusText,
        style: AppTextStyles.bodyText2.copyWith(color: textColor),
      ),
    );
  }
}