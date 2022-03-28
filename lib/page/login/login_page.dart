import 'package:flutter/material.dart';
import '../../my_flutter_app_icons.dart';

import '../../app_style.dart';
import '../home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                Text("Login", style: kLogin),
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
                  Icons.mail_outline,
                  color: kPrimaryColor,
                ),
                hintText: "Enter your email",
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
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot password?",
                  style: kDescription,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 48,
              width: 327,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: kButton,
                ),
                style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Text(
                "or continue with",
                style: kDescription,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 48,
              width: 327,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Google',
                  style: kButtonOutline,
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 2,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 48,
              width: 327,
              child: Container(
                child: TextButton(
                  // icon: Icon(MyFlutterApp.facebook_f),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: kPrimaryColor,
                    ),
                  ),
                  child: Text(
                    'Facebook',
                    style: kButtonOutline,
                  ),
                  // label: Text(
                  //   'Facebook',
                  //   style: kButtonOutline,
                  // ),
                ),
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
                      "Dont have any account? ",
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
                        "Sign Up",
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
