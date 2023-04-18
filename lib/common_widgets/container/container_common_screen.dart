import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/container/common_button.dart';
import 'package:my_page_view/common_widgets/container/scaffold_widget.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class CommonContainerScreen extends StatelessWidget {
  const CommonContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Of Container Button'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    showMessage(context, 'Gesture Detector - For Click');
                  },
                  child: const CommonButton()),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  showMessage(context, 'Click - Elevated Button');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: AppColors.darkOrange,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadiusDirectional.circular(25))),
                child: const Text('This Is Elevated Button'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
