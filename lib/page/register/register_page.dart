import 'package:flutter/material.dart';
import 'package:furnist/page/login/login_page.dart';

import '../../app_style.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text("Register", style: kLogin),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 51,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: kPrimaryColor,
                ),
                hintText: "Enter your name",
                contentPadding: EdgeInsets.only(top: 14),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: kPrimaryColor,
                ),
                hintText: "Email",
                contentPadding: EdgeInsets.only(top: 14),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: kPrimaryColor,
                ),
                hintText: "Password",
                contentPadding: EdgeInsets.only(top: 14),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: kPrimaryColor,
                ),
                hintText: "Phone",
                contentPadding: EdgeInsets.only(top: 14),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 48,
              width: 327,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Register',
                  style: kButton,
                ),
                style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: kDescription,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Log in",
                        style: kDescription2,
                      ),
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
