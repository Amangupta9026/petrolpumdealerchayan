import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:emailjs/emailjs.dart';
import 'package:http/http.dart' as http;

class SendMail extends StatefulWidget {
  const SendMail({super.key});
  // final String title;

  @override
  State<SendMail> createState() => _SendMailState();
}

class _SendMailState extends State<SendMail> {
  void sendMail() async {
    Map<String, dynamic> templateParams = {
      'name': 'James',
      'notes': 'Check this out!',
      'user_email': 'amangupta723@gmail.com',
      'reply_to': 'mango.choco123@gmail.com',
      'message':
          'We have received your application for Petrol Pump Dealership. We will contact you soon.',
    };

    try {
      await EmailJS.send(
        'service_80xqpw9', // '<YOUR_SERVICE_ID>',
        'template_4ztlsep', // '<YOUR_TEMPLATE_ID>',
        templateParams,
        const Options(
            publicKey: 'rPMVtUDETRWWpEFzl',
            privateKey: ' t1fY38PUtxylkSF0csAn6'),
      );
      print('SUCCESS!');
    } catch (error) {
      print(error.toString());
    }
  }

  //reply_to

  void _sendEmail() async {
    try {
      await EmailJS.send(
        'service_80xqpw9',
        '<YOUR_TEMPLATE_ID>',
        {
          'user_email': 'amangupta723@gmail.com',
          'message':
              'We have received your application for Petrol Pump Dealership. We will contact you soon.',
        },
        const Options(
          publicKey: 'rPMVtUDETRWWpEFzl',
          privateKey: 't1fY38PUtxylkSF0csAn6',
        ),
      );
      print('SUCCESS!');
    } catch (error) {
      if (error is EmailJSResponseStatus) {
        print('ERROR... ${error.status}: ${error.text}');
      }
      print(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Press "Send Email" to send email',
            ),
            ElevatedButton(
              onPressed: () {
                againsendMail(
                    name: 'XYZ',
                    email: 'amangupta723@gmail.com',
                    subject: 'Greeting from Petrol Pump',
                    message:
                        'We have received your application for Petrol Pump Dealership. We will contact you soon.');
              },
              child: const Text('Send Email'),
            ),
          ],
        ),
      ),
    );
  }

  void againsendMail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    const serviceId = 'service_80xqpw9';
    const templateId = 'template_4ztlsep';
    const userId = 'rPMVtUDETRWWpEFzl';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'to_name': 'Petrol Pump Dealer Chayan',
          'from_name': 'Petrol Pump',
          'reply_to': 'mango.choco123@gmail.com',
          'user_subject': subject,
          'user_message': message,
        },
      }),
    );
    log(response.body);
  }
}
