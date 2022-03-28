import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnist/app_style.dart';
import 'package:furnist/page/register/register_page.dart';
import 'login/login_page.dart';

class OnBoardingPageFinal extends StatefulWidget {
  const OnBoardingPageFinal({Key? key}) : super(key: key);

  @override
  State<OnBoardingPageFinal> createState() => _OnBoardingPageFinalState();
}

class _OnBoardingPageFinalState extends State<OnBoardingPageFinal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering 1 (1).png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/furniture.png",
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11),
                        child: Text(
                          "FURNIST",
                          style: kLogo,
                        ),
                      ),
                      Spacer(),
                      Spacer(),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: 25, bottom: 25),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.9),
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )),
                          width: size.width,
                          height: 202,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 48,
                                width: 327,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return LoginPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Login',
                                    style: kButton,
                                  ),
                                  style: TextButton.styleFrom(
                                      backgroundColor: kPrimaryColor),
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                width: 327,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return RegisterPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Register',
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
