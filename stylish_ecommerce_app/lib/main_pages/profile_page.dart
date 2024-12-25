import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/profile_page_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage('assets/images/profile photo.jpg'),
                    ),
                    Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.blue,
                              border:
                                  Border.all(width: 4, color: Colors.white)),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ]),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Personal Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              const Text(
                "Email Address",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              const ProfilePageTextField(hintText: "aashifa@gmail.com"),
              const SizedBox(height: 25),
              const Text(
                "Password",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              const ProfilePageTextField(
                hintText: "**********",
                obscureText: true,
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 15),
              Divider(),
              const SizedBox(height: 15),
              const Text(
                "Business Address Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              const Text(
                "Pincode",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(hintText: "45016"),
              const SizedBox(height: 25),
              const Text(
                "Address",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(hintText: "216 St Paul's RD"),
              const SizedBox(height: 25),
              const Text(
                "City",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(hintText: "London"),
              const SizedBox(height: 25),
              const Text(
                "State",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(
                hintText: "N1 2LL,",
                suffixIcon: Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 32,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Country",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(
                hintText: "United Kingdom",
              ),
              const SizedBox(height: 25),
              Divider(),
              const SizedBox(height: 25),
              const Text(
                "Bank account details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 25),
              const Text(
                "Bank Account Number",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(
                hintText: "204356XXXXXXX",
              ),
              const SizedBox(height: 25),
              const Text(
                "Account Holder’s Name",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(
                hintText: "Abhiraj Sisodiya",
              ),
              const SizedBox(height: 25),
              const Text(
                "IFSC Code",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              ProfilePageTextField(
                hintText: "SBIN00428",
              ),
              const SizedBox(height: 25),
              CustomButton(text: "Save", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
