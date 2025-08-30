import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_style.dart';
import '../widgets/custom_product_item.dart';


class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  // ডেমো ডেটা
  static const List<Map<String, String>> dummyOrders = [
    {
      'imageUrl': 'assets/images/profile.jpg',
      'productName': 'Women Solid Red A-Line Dress',
      'orderId': '52367897',
      'orderDate': 'Apr 10, 2023',
      'statusText': 'Delivered',
      'statusColor': 'success',
    },
    {
      'imageUrl': 'assets/images/profile.jpg', 'productName': 'Elegant Casual Summer Dress',
      'orderId': '52367898',
      'orderDate': 'Apr 09, 2023',
      'statusText': 'Shipped',
      'statusColor': 'info',
    },
    {
      'imageUrl': 'assets/images/profile.jpg','productName': 'Red Floral Evening Gown',
      'orderId': '52367899',
      'orderDate': 'Apr 08, 2023',
      'statusText': 'Processing',
      'statusColor': 'accent',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea( // উপরের স্ট্যাটাস বারের জন্য নিরাপদ স্থান
        child: Column(
          children: [
            // কাস্টম টপ বার
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Order History',
                    style: AppTextStyles.appBarTitle.copyWith(fontSize: 20.sp),
                  ),
                ],
              ),
            ),

            // লিস্টভিউ (CustomProductItem ব্যবহার করে)
            Expanded(
              child: ListView.builder(
              itemCount: dummyOrders.length,
                itemBuilder: (context, index) {
                  final order = dummyOrders[index];

                  // স্ট্যাটাসের রঙের জন্য একটি Map ব্যবহার করা হয়েছে
                  final Map<String, Color> statusColors = {
                    'Delivered': AppColors.success,
                    'Shipped': AppColors.info,
                    'Processing': AppColors.accent,
                  };

                  return CustomProductItem(
                    imageUrl: order['imageUrl']!,
                    firstLineText: order['productName']!,
                    secondLineText: 'Order #${order['orderId']}',
                    thirdLineText: 'Placed on ${order['orderDate']}',
                    fourthLineText: 'Status:',
                    statusText: order['statusText']!,
                    statusColor: statusColors[order['statusText']]!,
                    onTap: () {
                      // আইটেমে ট্যাপ করলে যা হবে
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Tapped on Order #${order['orderId']}')
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}