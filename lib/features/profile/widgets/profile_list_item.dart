import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const ProfileListItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24.sp,
              color: color ?? AppColors.iconColor,
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Text(
                text,
                style: AppTextStyles.bodyText1.copyWith(
                  color: color ?? AppColors.primaryText,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: AppColors.iconColor,
            ),
          ],
        ),
      ),
    );
  }
}