

import 'package:flutter/material.dart';
import 'package:flutter_interview_task/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          IconButton(onPressed: (){
        context.pop();
        }, icon: Icon(Icons.arrow_back_ios),),
                  Text('My Profile', style: AppTextStyles.appBarTitle),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 15.h),
              CircleAvatar(
                radius: 40.r,
                backgroundImage: const AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: 10.h),
              const CustomTextField(
                label: 'Your Name',
                hint: 'Mirable Lily',
              ),
              const CustomTextField(
                label: 'Email',
                hint: 'mirable@gmail.com',
              ),
              const CustomTextField(
                label: 'Phone',
                hint: '(380) 555-0105',
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: 'Locale',
                      hint: 'en_US',
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: CustomTextField(
                      label: 'Age',
                      hint: '25',
                    ),
                  ),
                ],
              ),
              const CustomTextField(
                label: 'About',
                hint: 'Lorem ipsum dolor...',
                isMultiLine: true,
              ),
              const CustomTextField(
                label: 'Location',
                hint: 'Cambridge, United Kingdom',
                suffixIcon: Icon(Icons.my_location, color: AppColors.secondaryText),
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: 'Save Changes',
                onPressed: () {
                  context.pop();
                },
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}