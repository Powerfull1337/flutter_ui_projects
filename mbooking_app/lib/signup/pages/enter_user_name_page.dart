import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/main_page.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/widgets/custom_button.dart';

class EnterUserNamePage extends StatelessWidget {
  const EnterUserNamePage({super.key});

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
            child: Icon(
              Icons.arrow_back_sharp,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 56),
            Text(
              "Enter Username",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryOrangeColor),
            ),
            SizedBox(height: 32),
            Text(
              "Latin characters, no emoji/symbols",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF2F2F2)),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                hintStyle: TextStyle(color: Colors.white54),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Done",
              onTap: () {
                NavigationService().push(MainPage());
              },
            ),
          ]),
        ));
  }
}
