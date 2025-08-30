// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// import '../constants/colors.dart';
// import '../constants/text_style.dart';
//
// class AppTheme {
//   // Define a static method to get the light theme
//   static ThemeData get lightTheme {
//     return ThemeData(
//       // 1. Primary Colors
//       primaryColor: AppColors.accentColor,
//       scaffoldBackgroundColor: AppColors.backgroundColor,
//       colorScheme: const ColorScheme.light(
//         primary: AppColors.accentColor,
//         secondary: AppColors.accentColor,
//
//       ),
//
//       // 2. AppBar Theme
//       appBarTheme: AppBarTheme(
//         backgroundColor: AppColors.backgroundColor,
//         elevation: 0,
//         centerTitle: true,
//         iconTheme: const IconThemeData(color: AppColors.iconColor),
//         titleTextStyle: AppTextStyles.appBarTitle.copyWith(
//           color: AppColors.primaryText,
//         ),
//       ),
//
//       // 3. Text Theme
//       textTheme: TextTheme(
//         headlineSmall: AppTextStyles.headline1,
//         bodyLarge: AppTextStyles.bodyText1,
//         bodyMedium: AppTextStyles.bodyText2,
//       ),
//
//       // 4. Icon Theme
//       iconTheme: const IconThemeData(
//         color: AppColors.iconColor,
//       ),
//
//       // 5. Button Theme (Example)
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: AppColors.accentColor,
//           foregroundColor: AppColors.backgroundColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.r),
//           ),
//           textStyle: TextStyle(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }