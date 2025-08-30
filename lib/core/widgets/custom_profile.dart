// lib/widgets/custom_profile.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_routes.dart';

class CustomProfile extends StatelessWidget {
  final String profileImage;
  final String name;
  final String membershipStatus;
  final Widget? statusWidget;

  const CustomProfile({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.membershipStatus,
    this.statusWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.go(AppRoutes.createProfile),
          child: CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(profileImage),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Text(
                  membershipStatus,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
                if (statusWidget != null) ...[
                  SizedBox(width: 8.w),
                  statusWidget!,
                ],
              ],
            ),
          ],
        ),
      ],
    );
  }
}