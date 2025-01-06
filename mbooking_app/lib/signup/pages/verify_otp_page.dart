import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/pages/main_page.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({super.key});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  TextEditingController otpController = TextEditingController();
  int remainingSeconds = 59;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
        startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            NavigationService().pop();
          },
          child: const Icon(
            Icons.arrow_back_sharp,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 56),
            const Text(
              "Confirm OTP code",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryOrangeColor),
            ),
            const SizedBox(height: 32),
            const Text(
              "You just need to enter the OTP sent to the registered phone number (704) 555-0127.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF2F2F2)),
            ),
            const SizedBox(height: 48),
            PinCodeTextField(
              controller: otpController,
              appContext: context,
              length: 6,
              textStyle: const TextStyle(color: Colors.white),
              animationType: AnimationType.fade,
              enableActiveFill: true,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 72,
                fieldWidth: 52,
                activeColor: AppColor.primaryOrangeColor,
                activeFillColor: const Color(0xFF261D08),
                inactiveColor: AppColor.primaryOrangeColor,
                inactiveFillColor: const Color(0xFF261D08),
                selectedColor: AppColor.primaryOrangeColor,
                selectedFillColor: const Color(0xFF261D08),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
 
              },
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '00:${remainingSeconds.toString().padLeft(2, '0')}',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const Spacer(),
            CustomButton(
              text: "Continue",
              onTap: () {
                NavigationService().push(const MainPage());
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
