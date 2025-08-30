// lib/widgets/pro_tag.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProTag extends StatelessWidget {
  const ProTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
         height: 15.h,
      width: 30.w,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
        child: Text(
          'Pro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 8.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}