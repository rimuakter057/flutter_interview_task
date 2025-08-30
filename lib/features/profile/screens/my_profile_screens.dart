import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/widgets/custom_profile.dart';
import 'package:flutter_interview_task/features/profile/widgets/pro_tag_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../../../routes/app_routes.dart';
import '../widgets/profile_list_item.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Profile', style: AppTextStyles.appBarTitle),
                  IconButton(
                    onPressed: () => context.push(AppRoutes.createProfile),
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
              CustomProfile(
                profileImage: "assets/images/profile.jpg",
                name: "Rimu",
                membershipStatus: "girls group",
                statusWidget: ProTag(),
              ),
              SizedBox(height: 30.h),
              ProfileListItem(
                icon: Icons.shopping_bag_outlined,
                text: 'My Order',
                onTap: () {
                  debugPrint('My Order tapped');
                },
              ),
              ProfileListItem(
                icon: Icons.history,
                text: 'Order History',
                onTap: () {
                  debugPrint('Order History tapped');
                },
              ),
              ProfileListItem(
                icon: Icons.language,
                text: 'Language',
                onTap: () {
                  debugPrint('Language tapped');
                },
              ),
              ProfileListItem(
                icon: Icons.logout,
                text: 'Log Out',
                color: AppColors.logoutColor, // Using the static color
                onTap: () {
                  debugPrint('Log Out tapped');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
