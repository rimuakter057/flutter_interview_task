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
      height: 20.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Center(
        child: Text(
          statusText,
          style: AppTextStyles.bodyText2.copyWith(
            color: textColor,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
