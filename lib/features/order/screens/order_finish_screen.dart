import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/widgets/custom_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/stepper.dart';
import '../widgets/tracking_step.dart';
import '../widgets/trailing_container.dart';

class OrderFinishScreen extends StatelessWidget {
  const OrderFinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    print(("back"));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(height: 5.h),
                CustomProfile(
                  profileImage: "assets/images/profile.jpg",
                  name: "Rimu",
                  membershipStatus: "my orders",
                ),
              ],
            ),
            SizedBox(height: 5.h),
            SimpleStepper(),
            //   TrackingTimeline(currentStep: 1, totalSteps: 2,),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(10.sp),
              color: Colors.blue.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tracking Number',
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Text(
                        '456-7890-1234-5678',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.content_copy, size: 20.sp, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TrackingStep(
              title: 'Packed',
              date: 'Aug 29, 2025',
              description:
                  'Your parcel is packed and will be handed over to our delivery partners.',
              isCompleted: true,
            ),
            TrackingStep(
              title: 'On The Way to Logistic Facility',
              date: 'Aug 30, 2025',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut labore.',
              isCompleted: true,
            ),
            TrackingStep(
              title: 'Arrived at Logistic Facility',
              date: 'Aug 31, 2025',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut labore.',
              isCompleted: true,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 2,
                              "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade700,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) {
                                  return BottomWidget();
                                },
                              );
                            },
                            child: TrailingStatusContainer(
                              statusText: 'bot_s',
                              backgroundColor: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut labore.',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
