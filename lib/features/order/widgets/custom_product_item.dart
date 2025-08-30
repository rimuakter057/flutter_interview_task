import 'package:flutter/material.dart';
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
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child:
                      imageUrl.isEmpty
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

                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return SizedBox(
                                width: 100.w,
                                height: 100.h,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: AppColors.primary,
                                    value:
                                        loadingProgress.expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                  ),
                                ),
                              );
                            },

                            errorBuilder:
                                (context, error, stackTrace) => Container(
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
                        style: AppTextStyles.bodyText1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(secondLineText, style: AppTextStyles.bodyText2),
                      SizedBox(height: 4.h),
                      Text(
                        thirdLineText,
                        style: AppTextStyles.bodyText2.copyWith(
                          color: AppColors.secondaryText,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            fourthLineText,
                            style: AppTextStyles.bodyText2.copyWith(
                              color: AppColors.secondaryText,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                color: AppColors.primary,
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              "delivery",
                              style: AppTextStyles.bodyText2.copyWith(
                                color: AppColors.primary,
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
