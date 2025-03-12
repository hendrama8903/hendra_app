import 'package:flutter/material.dart';
import 'package:hendra_app/utils/colors.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 69),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Nikmati Aktifitas Dengan Udara Terbaik",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "InterBold", fontSize: 24),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Buat akun atau masuk untuk mendapatkan informasi kualitas udara disekitarmu.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "InterMedium",
                      fontSize: 14,
                      color: fontGrayColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 0, 55, 55),
            child: Image.asset("assets/images/welcome.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 13.5),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Buat Akun",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "InterSemiBold",
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 13.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "InterSemiBold", fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
