import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final ValueChanged<String> onChanged;
  final Color? fontColor;
  final VoidCallback? onTap;
  final String hintText;
  final Color? hintTextColor;
  final TextInputType keyboardType;
  final int? maxLines;
  final bool readOnly;
  final TextAlign textAlign;

  const AppTextFormField(
      {super.key,
      required this.textEditingController,
      required this.onChanged,
      this.onTap,
      required this.hintText,
      this.fontColor,
      this.hintTextColor,
      required this.keyboardType,
      required this.maxLines,
      required this.readOnly,
      required this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      style: TextStyle(color: fontColor),
      onTap: onTap,
      cursorColor: AppColors.darkGreen,
      controller: textEditingController,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: hintTextColor),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.darkGreen,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.red,
          ),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please Enter Value';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      maxLines: maxLines,
      textAlign: textAlign,
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      
    );
  }
}
