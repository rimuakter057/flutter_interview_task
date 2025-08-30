import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/widgets/custom_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/colors.dart';
import '../../../routes/app_routes.dart';
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
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    print(("back"));
                  }, icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(height: 5.h,),
                  CustomProfile(
                     profileImage: "assets/images/profile.jpg",
                     name: "Rimu",
                     membershipStatus: "my orders",
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

                      final Map<String, Color> statusColors = {
                        'Delivered': AppColors.success,
                        'Shipped': AppColors.info,
                        'Processing': AppColors.accent,
                      };

                      final List<String> statusOptions = [
                        'Delivered',
                        'Shipped',
                        'Processing',
                      ];
                      final statusText =
                          statusOptions[index % statusOptions.length];

                      return CustomStatusItem(
                         imageUrl: order.image,
                         firstLineText: order.title,
                         secondLineText: 'Order #${order.id}',
                         fourthLineText: statusText,
                         statusText: "track",
                         statusColor: statusColors[statusText]!,
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
