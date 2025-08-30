// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../core/constants/colors.dart';
// import '../../../core/constants/text_style.dart';
// import '../widgets/custom_product_item.dart';
// import '../logic/order_provider.dart';
// import '../widgets/custom_status_widget.dart';
//
// class OrderStatusScreen extends ConsumerWidget {
//   const OrderStatusScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final ordersAsync = ref.watch(orderListProvider);
//
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: Column(
//           children: [
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryText, size: 20.sp),
//                     onPressed: () => Navigator.of(context).pop(),
//                   ),
//                   SizedBox(width: 8.w),
//                   Text('Order History', style: AppTextStyles.appBarTitle.copyWith(fontSize: 20.sp)),
//                 ],
//               ),
//             ),
//
//             // লিস্টভিউ
//             Expanded(
//               child: ordersAsync.when(
//                 data: (orders) {
//                   return ListView.builder(
//                     itemCount: orders.length,
//                     itemBuilder: (context, index) {
//                       final order = orders[index];
//
//                       final Map<String, Color> statusColors = {
//                         'Delivered': AppColors.success,
//                         'Shipped': AppColors.info,
//                         'Processing': AppColors.accent,
//                       };
//
//                       final List<String> statusOptions = ['Delivered', 'Shipped', 'Processing'];
//                       final statusText = statusOptions[index % statusOptions.length];
//
//                       return CustomStatusItem(
//                         imageUrl: order.image,
//                         firstLineText: order.title,
//                         secondLineText: 'Order #${order.id}',
//                         fourthLineText: 'Status:',
//                         statusText: statusText,
//                         statusColor: statusColors[statusText]!,
//                         onTap: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text('Tapped on Order #${order.id}')),
//                           );
//                         },
//                       );
//                     },
//                   );
//                 },
//                 loading: () => const Center(child: CircularProgressIndicator()),
//                 error: (err, stack) => Center(child: Text(err.toString())),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:flutter_interview_task/features/common/widgets/custom_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../widgets/custom_product_item.dart';
import '../logic/order_provider.dart';
import '../widgets/custom_status_widget.dart';

class OrderStatusScreen extends ConsumerWidget {
  const OrderStatusScreen({super.key});

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
              child: CustomProfile(
                  profileImage: "assets/images/profile.jpg",
                  name: "Rimu", membershipStatus: "my orders")
            ),

            // লিস্টভিউ
            Expanded(
              child: ordersAsync.when(
                data: (orders) {
                  return ListView.builder(
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index];

                      final Map<String, Color> statusColors = {
                        'Delivered': AppColors.success,
                        'Shipped': AppColors.info,
                        'Processing': AppColors.accent,
                      };

                      final List<String> statusOptions = ['Delivered', 'Shipped', 'Processing'];
                      final statusText = statusOptions[index % statusOptions.length];

                      return CustomStatusItem(
                        imageUrl: order.image,
                        firstLineText: order.title,
                        secondLineText: 'Order #${order.id}',
                       fourthLineText: statusText,
                        statusText: "track",
                        statusColor: statusColors[statusText]!,
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Tapped on Order #${order.id}')),
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
