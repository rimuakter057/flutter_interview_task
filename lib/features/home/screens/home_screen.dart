import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Interview Task",style: TextStyle(color: AppColors.primary,fontSize: 30.sp),)),
    );
  }
}
