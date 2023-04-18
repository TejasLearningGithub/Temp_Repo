import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: AppColors.darkBlue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [Center(child: Text('This is Example Container'))],
        ),
      ),
    );
  }
}
