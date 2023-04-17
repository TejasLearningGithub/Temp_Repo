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
                    print('Pressed');
                  },
                  child: const Text('Open Whatsapp')))),
    );
  }

  // void openWhatsapp(
  //     {required BuildContext context,
  //     required String text,
  //     required String number}) async {
  //   var whatsapp = number; //+92xx enter like this
  //   var whatsappURlAndroid =
  //       "https://whatsapp://send?phone=" + whatsapp + "&text=$text";
  //   var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";
  //   try {
  //     // if (Platform.isIOS) {
  //     //   // for iOS phone only
  //     //   if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
  //     //     await launchUrl(

  //     //     );
  //     //   } else {
  //     //     ScaffoldMessenger.of(context).showSnackBar(
  //     //         const SnackBar(content: Text("Whatsapp not installed")));
  //     //   }
  //     // } else {
  //     //   // android , web
  //     //   if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
  //     //     await launchUrl(Uri.parse(whatsappURlAndroid));
  //     //   } else {
  //     //     ScaffoldMessenger.of(context).showSnackBar(
  //     //         const SnackBar(content: Text("Whatsapp not installed")));
  //     //   }
  //     // }
  //     String url = "https://wa.me/$number?text=${Uri.encodeComponent(text)}";
  //     if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   print("Failed to open WhatsApp");
  // }
  //   } catch (e) {
  //     print('ERROR IS = ${e.toString()}');
  //   }
  // }

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
      print('Error is = ${e.toString()}');
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
