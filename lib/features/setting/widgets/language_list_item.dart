// language_list_item.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageListItem extends StatelessWidget {
  final String languageName;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageListItem({
    Key? key,
    required this.languageName,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
       height: 50.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber.shade200 : Colors.amber.shade50 ,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                languageName,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
              Icon(
                isSelected ? Icons.check_circle : Icons.circle,
                color: isSelected ? Colors.blue.shade700 : Colors.grey.shade300,
                size: 24.w,
              ),
            ],
          ),
        ),

      ),
    );
  }
}