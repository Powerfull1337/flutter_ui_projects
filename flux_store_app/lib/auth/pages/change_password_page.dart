import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/auth_button.dart';
import 'package:flux_store_app/auth/widgets/auth_field.dart';
import 'package:flux_store_app/auth/widgets/success_model.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Center(child: Icon(Icons.arrow_back)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create new password",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your new password must be different from previously used password",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 60),
            AuthField(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility),
                labelText: "Password"),
            SizedBox(height: 20),
            AuthField(
                hintText: "Confirm password",
                suffixIcon: Icon(Icons.visibility_off),
                labelText: "Confrim Password"),
            SizedBox(height: 40),
            AuthButton(
                text: "Confirm",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: SuccessModal(),
                      );
                    },
                  );
                })
          ],
        )),
      ),
    );
  }
}
