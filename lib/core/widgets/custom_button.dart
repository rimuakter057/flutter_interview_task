import 'package:flutter/material.dart';
import 'package:flutter_interview_task/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
          ),
          onPressed: onPressed, child: Text(text,style: TextStyle(color:AppColors.primaryText),)),
    );
  }
}
