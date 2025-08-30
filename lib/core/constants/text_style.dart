// lib/utils/app_text_styles.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'colors.dart';

class AppTextStyles {
  // App Bar Title
  static TextStyle appBarTitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );

  // Headings
  static TextStyle heading1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );

  // Body Text
  static TextStyle bodyText1 = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryText,
  );

  static TextStyle bodyText2 = TextStyle(
    fontSize: 14.sp,
    color: AppColors.secondaryText,
  );

  // Button Text
  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.background, // Assuming white text on colored buttons
  );

  // Custom Styles
  static TextStyle listTileText = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryText,
  );

  static TextStyle logoutText = TextStyle(
    fontSize: 16.sp,
    color: AppColors.error,
  );
}