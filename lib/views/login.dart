import 'package:flutter/material.dart';
import 'package:hendra_app/utils/colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logo.png", width: 44, height: 44),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Selamat Datang",
                      style: TextStyle(
                        fontFamily: "InterSemiBold",
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 32),
                    child: Text(
                      "Masukkan username dan password untuk melanjutkan",
                      style: TextStyle(
                        color: fontGrayColor,
                        fontFamily: "InterRegular",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Text(
                    "Username",
                    style: TextStyle(fontFamily: "InterRegular", fontSize: 14),
                  ),
                  TextFormField(
                    style: const TextStyle(
                      fontFamily: "InterRegular",
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 13.5,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(400),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Masukkan username",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: "InterRegular",
                        color: hintColor,
                      ),
                      fillColor: formColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: greenColor, width: 2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Passowrd",
                      style: TextStyle(
                        fontFamily: "InterRegular",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: isHide,
                    style: const TextStyle(
                      fontFamily: "InterRegular",
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          isHide = !isHide;
                          setState(() {});
                        },
                        icon: Icon(
                          isHide
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 18,
                          color: hintColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 13.5,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(400),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Masukkan password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: "InterRegular",
                        color: hintColor,
                      ),
                      fillColor: formColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: greenColor, width: 2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 13.5),
                        decoration: BoxDecoration(
                          color: greenColor.withOpacity(0.28),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          "Masuk",
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
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Row(
                      children: [
                        Expanded(child: Divider(color: dividerColor)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "atau",
                            style: TextStyle(
                              fontFamily: "InterMedium",
                              fontSize: 14,
                              color: dividerColor,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: dividerColor)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 13.5),
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        color: grayBtnColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            width: 35,
                            height: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: const Text(
                              "Masuk dengan Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "InterSemiBold",
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(fontFamily: "InterRegular"),
                  ),
                  Text(
                    "Daftar Sekarang",
                    style: TextStyle(
                      fontFamily: "InterSemiBold",
                      color: greenColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
