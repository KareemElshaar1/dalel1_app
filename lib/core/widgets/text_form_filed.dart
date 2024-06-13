import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isPassword;
  final String? hint;
  final bool? enabled;
  final int? maxLines, minLines, maxLength;
  final String? obscuringCharacter, value;
  final String? Function(String?)? onValidate;
  final void Function(String?)? onChanged, onFieldSubmitted, onSaved;
  final void Function()? onEditingComplete, onTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixWidget, prefixIcon;
  final IconData? icon;
  final TextInputAction? action;
  final FocusNode? focusNode;
  final String? labelText;

  const CustomTextField({
    super.key,
    this.controller,
    this.isPassword,
    this.hint,
    this.enabled,
    this.obscuringCharacter,
    this.value,
    this.onValidate,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onSaved,
    this.onTap,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.keyboardType,
    this.inputFormatters,
    this.suffixWidget,
    this.icon,
    this.prefixIcon,
    this.action,
    this.focusNode,
    this.labelText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 50),
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.value,
        validator: widget.onValidate,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        onTap: widget.onTap,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        maxLength: widget.maxLength,
        obscureText: widget.isPassword ?? false ? obscureText : false,
        obscuringCharacter: '.',
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        style: theme.textTheme.titleSmall!.copyWith(
          color: AppColors.black,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: widget.action ?? TextInputAction.done,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: CustomTextStyles.poppins300style16
              .copyWith(color: AppColors.grey, fontWeight: FontWeight.bold),
          fillColor: AppColors.offWhite,
          filled: true,
          suffixIcon: widget.isPassword ?? false
              ? InkWell(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                )
              : widget.suffixWidget,
          prefixIcon: widget.prefixIcon,
          hintText: widget.hint,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              //1color: Colors.white,
              width: 1,
            ),
          ),
          // suffix: isPass widget.suffixWidget,
          contentPadding: const EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
            bottom: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            // Border
            borderSide: BorderSide(
              color: AppColors.deepBrown,
              width: 1,
            ),
          ),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
          errorStyle: const TextStyle(color: Colors.red),
          errorMaxLines: 4,
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
