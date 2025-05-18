import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/screens/login/login.ctrl.dart';
import 'package:money_manager/styles/styles.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginController(),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Consumer<LoginController>(
              builder: (context, controller, _) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: 81,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                      child: Text(
                    'Money Manager',
                    style: AppTextStyles.logoText,
                    textAlign: TextAlign.center,
                  )),
                  SizedBox(
                    height: 43,
                  ),
                  Text(
                    'Email',
                    style: AppTextStyles.fieldLabel,
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: AppTextStyles.inputText,
                    decoration: InputDecoration(
                        hintText: 'Masukkan email kamu',
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 5)),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Password',
                    style: AppTextStyles.fieldLabel,
                  ),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        obscureText: controller.obscurePassword,
                        keyboardType: TextInputType.visiblePassword,
                        style: AppTextStyles.inputText,
                        decoration: InputDecoration(
                          hintText: 'Masukkan password kamu',
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: IconButton(
                            onPressed: controller.togglePasswordVisibility,
                            iconSize: 20,
                            icon: Icon(controller.obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: AppButtonStyles.primaryButton,
                      child: Text(
                        'Masuk',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text.rich(TextSpan(
                        text: 'Belum punya akun? ',
                        style: AppTextStyles.normalText,
                        children: [
                          TextSpan(
                              text: 'Daftar',
                              style: AppTextStyles.linkText,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('tapped');
                                })
                        ])),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
