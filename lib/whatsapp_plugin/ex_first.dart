import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class ExFirst extends StatefulWidget {
  const ExFirst({super.key});

  @override
  State<ExFirst> createState() => _ExFirstState();
}

class _ExFirstState extends State<ExFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Built-In Feature'),
      ),
      body: SizedBox(
          child: Center(
              child: TextButton(
                  onPressed: () {
                    openWhatsapp(context: context);
                    log('Pressed');
                  },
                  child: const Text('Open Whatsapp')))),
    );
  }

  

  openWhatsapp({required BuildContext context}) async {
    try {
      String whatsapp = '+918460512281';
      String whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=hello";
      String whatsappURLIos =
          "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
      if (Platform.isIOS) {
        if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
          await launchUrl(Uri.parse(whatsappURLIos));
        } else {
          _showToast(text: "whatsapp no installed");
        }
      } else {
        if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
          await launchUrl(Uri.parse(whatsappURlAndroid));
        } else {
          _showToast(text: "whatsapp no installed");
        }
      }
    } catch (e) {
      log('Error is = ${e.toString()}');
    }
  }

  _showToast({required String text}) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
