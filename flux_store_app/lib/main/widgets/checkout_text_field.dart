import 'package:flutter/material.dart';

class CheckoutTextField extends StatelessWidget {
  final bool isRequired;
  final bool isArsterisk;
  final Color? asteriskColor;

  final String labelText;
  final Icon? suffixIcon;

  const CheckoutTextField(
      {super.key,
      this.isRequired = false,
      this.asteriskColor,
      required this.labelText,
      this.isArsterisk = true,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: RichText(
          text: TextSpan(
            text: labelText,
            style: TextStyle(color: Colors.grey, fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                text: isArsterisk ? " *" : null,
                style:
                    TextStyle(color: isRequired ? Colors.red : asteriskColor),
              ),
            ],
          ),
        ),
        fillColor: Colors.grey,
        filled: false,
        contentPadding: EdgeInsets.only(bottom: 5),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        errorText: isRequired ? "Field is required" : null,
        errorStyle: TextStyle(color: Colors.red),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}