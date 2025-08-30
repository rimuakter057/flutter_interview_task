// lib/widgets/custom_text_field.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart'; // Import your text styles

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isMultiLine;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
    this.isMultiLine = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.bodyText2,
          ),
          SizedBox(height: 5.h),
          TextField(
            maxLines: isMultiLine ? 5 : 1,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyles.bodyText1.copyWith(color: AppColors.hintText),
              filled: true,
              fillColor: AppColors.inputFieldBackground,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            ),
          ),
        ],
      ),
    );
  }
}