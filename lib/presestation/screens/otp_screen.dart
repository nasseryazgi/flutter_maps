import 'package:flutter/material.dart';
import 'package:flutter_maps/constants/my_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    Key? key,
  }) : super(key: key);
  final phoneNumber = '';
  Widget _buildIntroTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Verify Your Phone Number ?',
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
          child: RichText(
            text: TextSpan(
                text: 'Enter Your 6 digit code numbers send to',
                style:
                    TextStyle(color: Colors.black, fontSize: 18, height: 1.4),
                children: <TextSpan>[
                  TextSpan(
                      text: ' $phoneNumber',
                      style: const TextStyle(color: MyColors.blue))
                ]),
          ),
        )
      ],
    );
  }

  Widget _buildPinCodeFields(BuildContext context) {
    return Container(
      child: PinCodeTextField(
        appContext: context,
        autoFocus: true,
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        length: 6,
        obscureText: false,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          borderWidth: 1,
          activeColor: MyColors.blue,
          inactiveColor: MyColors.blue,
          inactiveFillColor: Colors.white,
          activeFillColor: MyColors.lightBlue,
          selectedColor: MyColors.blue,
          selectedFillColor: Colors.white,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        onCompleted: (submitedCode) {
          // otpCode = submitedCode;
          print("Completed");
        },
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }

  Widget _buildVrifyBotton() {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          // TODO : NEXTVIDEO
        },
        style: ElevatedButton.styleFrom(
            maximumSize: Size(110, 50),
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        child: const Text(
          'Verify',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            _buildIntroTexts(),
            SizedBox(
              height: 88,
            ),
            _buildPinCodeFields(context),
            SizedBox(height: 80),
            _buildVrifyBotton(),
          ],
        ),
      ),
    ));
  }
}
