import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String imageUrl;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.profileHeaderBg,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.bodyText1.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.h),
              Text(
                phoneNumber,
                style: AppTextStyles.bodyText2,
              ),
              SizedBox(height: 5.h),
              Text(
                email,
                style: AppTextStyles.bodyText2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}