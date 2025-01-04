import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';

class AlertDialogueSuccess extends StatelessWidget {
  const AlertDialogueSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color(0xFF508A7B).withOpacity(0.1),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color(0xFF508A7B),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            const Text(
              "Thank you for your feedback!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 26),
            const Text(
              "We appreciated your feedback. We’ll use your feedback to improve your experience.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6E768A)),
            ),
            const SizedBox(height: 25),
            CustomButton(
              text: "Done",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

void showPaymentSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialogueSuccess();
    },
  );
}
