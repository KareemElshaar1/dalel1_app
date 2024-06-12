import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.color, required this.text, required this.onPressed});

  final Color? color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: color ?? AppColors.primaryColor,
                foregroundColor: AppColors.offWhite,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              text,
              style: CustomTextStyles.poppins500style18
                  .copyWith(color: Colors.white),
            )),
      ),
    );
  }
}
