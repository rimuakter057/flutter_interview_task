
import 'package:flutter/material.dart';
import 'package:flutter_interview_task/features/order/widgets/trailling_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../../../routes/app_routes.dart';

class CustomStatusItem extends StatelessWidget {
  final String imageUrl;
  final String firstLineText;
  final String secondLineText;
  final String fourthLineText;
  final String statusText;
  final Color statusColor;


  const CustomStatusItem({
    super.key,
    required this.imageUrl,
    required this.firstLineText,
    required this.secondLineText,
    required this.fourthLineText,
    required this.statusText,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        context.push(AppRoutes.trackingProcess);
      },
      child: Container(

        decoration: BoxDecoration(
          color: Colors.transparent,

        ),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(
                    imageUrl,
                    width: 120.w,
                    height: 100.h,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 100.w,
                      color: AppColors.cardBackground,
                      child: Icon(Icons.broken_image, size: 40.sp, color: AppColors.secondaryText),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              firstLineText,
                              style: AppTextStyles.bodyText1.copyWith(fontWeight: FontWeight.w600,fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                           "second text",
                            style: AppTextStyles.bodyText2.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        secondLineText,
                        style: AppTextStyles.bodyText2,
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            fourthLineText,
                            style: AppTextStyles.bodyText2.copyWith(color: AppColors.primaryText,fontWeight: FontWeight.bold),
                          ),
                          TrailingStatusContainer(
                            statusText: statusText,
                            backgroundColor: statusColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}