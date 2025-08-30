import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../widgets/custom_product_item.dart';
import '../logic/order_provider.dart';

class OrderHistoryScreen extends ConsumerWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(orderListProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.primaryText,
                      size: 20.sp,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Order History',
                    style: AppTextStyles.appBarTitle.copyWith(fontSize: 20.sp),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ordersAsync.when(
                data: (orders) {
                  return ListView.builder(
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index];

                      return CustomProductItem(
                        imageUrl: order.image,
                        firstLineText: order.title,
                        secondLineText: 'Order #${order.id}',
                        thirdLineText:
                            'Placed on 2023-08-${10 - index}', // dummy date
                        fourthLineText: 'Status:',

                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Tapped on Order #${order.id}'),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text(err.toString())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
