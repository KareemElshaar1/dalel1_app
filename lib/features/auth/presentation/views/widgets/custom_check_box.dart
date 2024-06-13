import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: BorderSide(color: AppColors.grey),
      value: value,
      onChanged: (newValue) {
        setState(() {
          value == newValue;
        });
      },
    );
  }
}
