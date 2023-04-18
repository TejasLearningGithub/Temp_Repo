import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/theme/app_theme.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class SecondListTile extends StatefulWidget {
  final int? index;
  const SecondListTile({
    super.key,
    this.index,
  });

  @override
  State<SecondListTile> createState() => _SecondListTileState();
}

class _SecondListTileState extends State<SecondListTile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation To Another Tile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Container(
          padding:const EdgeInsets.all(defaultPadding / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 5),
              ),
            ],
            border: Border.all(color: AppColors.darkBlue, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'LD003171',
                        style: montserratBold,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Renu Pathak',
                        style: montserratBold.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                  Text(
                    'sikha@gmail.com',
                    style: montserratBold.copyWith(fontSize: 12),
                  ),
                  Text(
                    '1234567890',
                    style: montserratBold.copyWith(fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightblue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: AppColors.darkOrange,
                        )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightblue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail_outline_rounded,
                        color: AppColors.darkOrange,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
