import 'package:flutter/material.dart';
import 'package:ui_tutorial/widgets/k_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Spacer
            const Spacer(flex: 1),

            // Image
            Image.asset(
              "assets/images/on-boarding-img.png",
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30),

            // Your Real Time Cloud Dashboard on the go
            KText(
              text: "Your Real Time Cloud\nDashboard On The Go",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 14),

            // Your Real Time Cloud Dashboard on the go
            KText(
              textAlign: TextAlign.center,
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey,
            ),

            const Spacer(flex: 2),

            // Btn
            GestureDetector(
              onTap: () {
                print("hi btn");
              },
              child: Container(
                height: 55,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                ),

                child: Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon
                    Icon(Icons.arrow_forward, color: Colors.white),

                    // Text
                    KText(
                      text: "Let's Get Started",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      textAlign: TextAlign.center,
                    ),
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
