
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/authwith_number.dart';


class OTPPage extends StatelessWidget {
  const OTPPage({super.key});
  @override
  Widget build(BuildContext context) {
    authWithNumber controller = Get.put(authWithNumber());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset("assets/images/otp.png"),
                const Row(
                  children: [
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Please enter  OTP code sended on your mobile number",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          controller: controller.otp,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.deepPurple.shade100,
                            filled: true,
                            hintText: "OTP CODE",
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    controller.verifyMobilerNumber();
                  },
                  child: const Text("DONE"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}