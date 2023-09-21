import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final homeNotifierProvider =
    AsyncNotifierProvider.autoDispose<HomeNotifier, HomeMode>(() {
  return HomeNotifier();
});

class HomeMode {
  List genderList = [
    'UltraTech Cement',
    'Ambuja Cement',
    'ACC Cement',
    'Dalmia Cement',
    'JK Cement',
    'JSW Cement',
    'Shree Cement',
    'Orient Cement'
  ];
  String? selectedGender;
  bool? isChecked = false;
  int? sixDigitRandomNumber;
}

class HomeNotifier extends AutoDisposeAsyncNotifier<HomeMode> {
  final HomeMode _depositMode = HomeMode();

  void isSelectedGender(String isValue) {
    _depositMode.selectedGender = isValue;
    state = AsyncData(_depositMode);
  }

  void isChecked(bool value) {
    _depositMode.isChecked = value;
    state = AsyncData(_depositMode);
  }

  void againsendMail({
    required String toName,
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
          'to_name': toName,
          'user_name': toName,
          'user_email': email,
          'from_name': 'Petrol Pump',
          
          'reply_to': email,
          'user_subject': subject,
          'user_message': message,
        },
      }),
    );
    log(response.body);
  }

  // 6 digit random number
  void randomNumber() {
    var rnd = math.Random();
    var next = rnd.nextDouble() * 1000000;
    while (next < 100000) {
      next *= 10;
    }
    _depositMode.sixDigitRandomNumber = next.toInt();
    print(_depositMode.sixDigitRandomNumber);
  }

  @override
  build() {
    return _depositMode;
  }
}
