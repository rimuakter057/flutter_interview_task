// lib/widgets/custom_product_details.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';

class CustomProductDetails extends StatelessWidget {
  final String imageUrl;
  final String firstLineText;
  final String secondLineText;
  final String thirdLineText;
  final String fourthLineText;
  final Widget trailingContainer; // চতুর্থ লাইনের কন্টেইনার
  final VoidCallback? onTap;

  const CustomProductDetails({
    super.key,
    required this.imageUrl,
    required this.firstLineText,
    required this.secondLineText,
    required this.thirdLineText,
    required this.fourthLineText,
    required this.trailingContainer,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        elevation: 1.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.network(
                  imageUrl,
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 80.w,
                    height: 80.h,
                    color: AppColors.cardBackground,
                    child: Icon(Icons.broken_image, size: 30.sp, color: AppColors.secondaryText),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              // Product Details Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Line: Product Title
                    Text(
                      firstLineText,
                      style: AppTextStyles.bodyText1.copyWith(fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),

                    // Second Line: Order ID
                    Text(
                      secondLineText,
                      style: AppTextStyles.bodyText2,
                    ),
                    SizedBox(height: 4.h),

                    // Third Line: Date
                    Text(
                      thirdLineText,
                      style: AppTextStyles.bodyText2.copyWith(color: AppColors.secondaryText),
                    ),
                    SizedBox(height: 8.h),

                    // Fourth Line: Row with text and a container
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          fourthLineText,
                          style: AppTextStyles.bodyText2.copyWith(color: AppColors.secondaryText),
                        ),
                        trailingContainer,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}