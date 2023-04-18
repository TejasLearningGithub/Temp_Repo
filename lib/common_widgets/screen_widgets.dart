import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/common_text_form_field.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

class ScreenWidgets extends StatefulWidget {
  const ScreenWidgets({super.key});

  @override
  State<ScreenWidgets> createState() => _ScreenWidgetsState();
}

class _ScreenWidgetsState extends State<ScreenWidgets> {
  final controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen For Common Widget'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  bottom: 8.0,
                  left: 15,
                  right: 15,
                ),
                child: AppTextFormField(
                  keyboardType: TextInputType.name,
                  onTap: () {},
                  textEditingController: controller,
                  onChanged: (val) {
                    log('you have enter $val');
                  },
                  hintText: 'Please Enter Value',
                  fontColor: AppColors.darkOrange,
                  hintTextColor: AppColors.darkOrange,
                  maxLines: 1,
                  readOnly: false,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
