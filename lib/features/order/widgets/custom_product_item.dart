// lib/widgets/custom_product_item.dart

import 'package:flutter/material.dart';
import 'package:flutter_interview_task/features/order/widgets/trailling_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';

class CustomProductItem extends StatelessWidget {
  final String imageUrl;
  final String firstLineText;
  final String secondLineText;
  final String thirdLineText;
  final String fourthLineText;
  final String statusText;
  final Color statusColor;
  final VoidCallback? onTap;

  const CustomProductItem({
    super.key,
    required this.imageUrl,
    required this.firstLineText,
    required this.secondLineText,
    required this.thirdLineText,
    required this.fourthLineText,
    required this.statusText,
    required this.statusColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5.w,
              offset: Offset(0, 2.w),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: IntrinsicHeight( // এটি ভেতরের সব child-কে একই উচ্চতা দেবে
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch, // child-কে উল্লম্বভাবে প্রসারিত করবে
              children: [
                // Product Image - ছবির উচ্চতা কলামের উচ্চতার সমান হবে
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(
                    imageUrl,
                    width: 100.w, // ছবির প্রস্থ নির্দিষ্ট রাখা হয়েছে
                    fit: BoxFit.cover, // উচ্চতা যত বড় হোক, ছবিটি মানিয়ে নেবে
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 100.w,
                      color: AppColors.cardBackground,
                      child: Icon(Icons.broken_image, size: 40.sp, color: AppColors.secondaryText),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                // Product Details Column - ছবির পাশের অংশ
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstLineText,
                        style: AppTextStyles.bodyText1.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        secondLineText,
                        style: AppTextStyles.bodyText2,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        thirdLineText,
                        style: AppTextStyles.bodyText2.copyWith(color: AppColors.secondaryText),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            fourthLineText,
                            style: AppTextStyles.bodyText2.copyWith(color: AppColors.secondaryText),
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