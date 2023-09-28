import 'package:flutter/material.dart';
import 'package:flutter_maps/constants/my_color.dart';
import 'package:flutter_maps/constants/strings.dart';

import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  GlobalKey _phoneForeKey = GlobalKey<FormState>();
  late String phoneNumber;
  @override
  Widget _buildIntroTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'What  is your phone number ?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: const Text(
            'Please enter your phone number to verify your account.',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        )
      ],
    );
  }

  Widget _bildPhoneFormField() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.lightGrey),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            child: Text(
              '${generateCounterFlag()}+972',
              style: TextStyle(fontSize: 18, letterSpacing: 2.0),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.blue),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            child: TextFormField(
              //Star Writting
              autofocus: true,
              style: const TextStyle(fontSize: 18, letterSpacing: 2.0),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                } else if (value.length < 9) {
                  return 'Too Short for a phone numer!';
                }
                return null;
              },
              onSaved: (value) {
                phoneNumber = value!;
              },
            ),
          ),
        ),
      ],
    );
  }

  String generateCounterFlag() {
    String counterCode = 'PS';
    //Search.
    String flag = counterCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
    return flag;
  }

  Widget _buildNextButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtpScreen()));
        },
        style: ElevatedButton.styleFrom(
            maximumSize: Size(110, 50),
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Form(
              key: _phoneForeKey,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildIntroTexts(),
                    const SizedBox(
                      height: 110,
                    ),
                    _bildPhoneFormField(),
                    _buildNextButton(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
