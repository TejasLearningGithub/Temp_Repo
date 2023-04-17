import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ExSecond extends StatefulWidget {
  const ExSecond({super.key});

  @override
  State<ExSecond> createState() => _ExSecondState();
}

class _ExSecondState extends State<ExSecond> {
  var email = Email();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Sending Using Flutter'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () async {
                await sendEmail('t903040@gmail.com');
              },
              child: const Text(
                'Do Email',
              ),
            ),
          )
        ],
      ),
    );
  }

  sendEmail(String emailAddress) async {
    try {
      email = Email(
        body: 'Hello World',
        subject: 'Testing email on flutter',
        recipients: [emailAddress],
        //cc: ['cc@example.com'],
        //bcc: ['bcc@example.com'],
        //attachmentPaths: ['/path/to/attachment.zip'],
        isHTML: false,
      );
    } catch (e) {
      log(e.toString());
    }
    await FlutterEmailSender.send(email);
  }
}
