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

  final VoidCallback? onTap;

  const CustomProductItem({
    super.key,
    required this.imageUrl,
    required this.firstLineText,
    required this.secondLineText,
    required this.thirdLineText,
    required this.fourthLineText,


    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color:Colors.transparent ,
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
                  child: imageUrl.isEmpty
                      ? Container(
                    width: 100.w,
                    height: 100.h,
                    color: AppColors.cardBackground,
                    child: Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primary,
                      ),
                    ),
                  )
                      : Image.network(
                    imageUrl,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.contain,
                    // ✅ লোডিং হ্যান্ডেল
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        width: 100.w,
                        height: 100.h,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.primary,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    // ✅ এরর হ্যান্ডেল
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 100.w,
                      height: 100.h,
                      color: AppColors.cardBackground,
                      child: Icon(
                        Icons.broken_image,
                        size: 40.sp,
                        color: AppColors.secondaryText,
                      ),
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
                     Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: Colors.transparent, // ব্যাকগ্রাউন্ড থাকবে না
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(
              color: AppColors.primary, // বর্ডার কালার primary
              width: 1.5,
            ),
          ),
          child: Text(
            "delivery",
            style: AppTextStyles.bodyText2.copyWith(
              color: AppColors.primary, // টেক্সট কালারও primary
            ),
          ),
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