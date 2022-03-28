import 'package:flutter/material.dart';
import 'package:furnist/app_style.dart';
import 'package:furnist/page/contents_model.dart';
import 'package:furnist/page/onboarding_page_final.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 10),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return Center(
                    child: Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(contents[i].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(
                            children: <Widget>[
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
                              Container(
                                padding: EdgeInsets.only(top: 62, bottom: 20),
                                child: Text(
                                  contents[i].title,
                                  style: kTitle,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 28, right: 28),
                                child: SizedBox(
                                  height: 40,
                                  child: Text(
                                    contents[i].description,
                                    textAlign: TextAlign.center,
                                    style: kDescription,
                                  ),
                                ),
                              ),
                              Container(padding: EdgeInsets.only(top: 45),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    contents.length,
                                        (index) => dotIndicator(index),
                                  ),
                                ),
                              ),
                              Spacer(flex: 1,),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color.fromRGBO(255, 255, 255, 0.9), Colors.transparent],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    )
                                  ),
                                  padding: EdgeInsets.only(top: 114),
                                  width: size.width,
                                  height: 202,
                                  child: Column(
                                    children: [
                                      currentPage == contents.length - 1
                                          ? SizedBox(
                                        height: 48,
                                        width: 327,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OnBoardingPageFinal()));
                                          },
                                          child: Text(
                                            'Get Started',
                                            style: kButton,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor: kPrimaryColor,
                                          ),
                                        ),
                                      )
                                          : SizedBox(
                                        width: 327,
                                        height: 48,
                                        child: TextButton(
                                          onPressed: () {
                                            _pageController.nextPage(
                                                duration: Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut);
                                          },
                                          child: Text(
                                            'Next',
                                            style: kButton,
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor: kPrimaryColor,
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
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
