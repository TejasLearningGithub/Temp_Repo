import 'package:flutter/material.dart'; 
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.darkOrange,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.darkBlue,
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Press',
              style: TextStyle(color: AppColors.darkBlue),
            ),
          ],
        ),
      ),
    );
  }
}
