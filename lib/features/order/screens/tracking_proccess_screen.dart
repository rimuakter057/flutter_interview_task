import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_profile.dart';
import '../../../routes/app_routes.dart';
import '../widgets/tracking_step.dart';
import '../widgets/tracking_time_line.dart';

class TrackingProcessScreen extends StatelessWidget {
  const TrackingProcessScreen({super.key});

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
            TrackingTimeline(currentStep: 1, totalSteps: 2),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(10.sp),
              color: Colors.grey.shade100,
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
            TrackingStep(
              title: 'Shipped',
              date: 'Sep 01, 2025',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut labore.',
              isCompleted: false,
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () {
                context.push(AppRoutes.orderFinish);
              },
              child: Text(
                "NEXT",
                style: TextStyle(color: AppColors.primary, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
