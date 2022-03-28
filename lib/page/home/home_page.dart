import 'package:flutter/material.dart';
import 'package:furnist/app_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../detail_product/detail_product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activateIndex = 0;
  final carouselImages = [
    "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering.jpg",
    "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering.jpg",
    "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering.jpg",
  ];
  final itemImage = [
    "assets/images/chair.png",
    "assets/images/orange-couch.png",
    "assets/images/lamp.png",
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                size: 28,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel_outlined,
                size: 28,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          fixedColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: kSecondaryColor,
          elevation: 0,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 28,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Find Best Furniture\nFor Your Home",
                          style: kLeadingHome,
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Center(
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                child: CarouselSlider.builder(
                                  itemCount: carouselImages.length,
                                  itemBuilder: (context, index, realIndex) {
                                    final carouselImage = carouselImages[index];

                                    return buildImage(carouselImage, index);
                                  },
                                  options: CarouselOptions(
                                    initialPage: 0,
                                    autoPlay: true,
                                    enlargeStrategy:
                                        CenterPageEnlargeStrategy.height,
                                    enlargeCenterPage: true,
                                    autoPlayInterval: Duration(seconds: 4),
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) =>
                                        setState(() => activateIndex = index),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0.0,
                                right: 0.0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Weekend Sale\nDiscount up to",
                                        style: kCarouselHome,
                                      ),
                                      Text(
                                        "70%",
                                        style: kCarouselHomeDisc,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: buildIndicator(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories",
                                style: kListName,
                              ),
                              Text(
                                "Show All",
                                style: kShowAll,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoriesCard(
                              image:
                                  "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering 1 (2).png",
                              category: "Sofa",
                              press: () {},
                            ),
                            CategoriesCard(
                              image:
                                  "assets/images/cabinets-wall-tv-living-room 1 (1).png",
                              category: "Cabinet",
                              press: () {},
                            ),
                            CategoriesCard(
                              image:
                                  "assets/images/cabinets-wall-tv-living-room 1 (1).png",
                              category: "Chair",
                              press: () {},
                            ),
                            SizedBox(
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "New Arrivals",
                                style: kListName,
                              ),
                              Text(
                                "Show All",
                                style: kShowAll,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NewestItems(
                              item: "Wooden Chair",
                              price: "14",
                              image: "assets/images/chair.png",
                              press: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailProductPage();
                                    },
                                  ),
                                );
                              },
                            ),
                            NewestItems(
                              item: "Decorative Light",
                              price: "30",
                              image: "assets/images/lamp.png",
                              press: () {},
                            ),
                            NewestItems(
                              item: "Orange Couch",
                              price: "30",
                              image: "assets/images/orange-couch.png",
                              press: () {},
                            ),
                            SizedBox(
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String carouselImage, int index) => Container(
        color: Colors.grey,
        child: Image.asset(
          carouselImage,
          height: 150,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activateIndex,
        count: carouselImages.length,
        effect: JumpingDotEffect(
          dotWidth: 12,
          dotHeight: 12,
          activeDotColor: kPrimaryColor,
          dotColor: kSecondaryColor,
        ),
      );
}

class NewestItems extends StatelessWidget {
  const NewestItems(
      {Key? key,
      required this.price,
      required this.item,
      required this.image,
      required this.press})
      : super(key: key);

  final String image, item, price;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        padding: EdgeInsets.only(left: 8),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                width: 125,
                height: 125,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: press,
                    ),
                    Text(item),
                    Text(price),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard(
      {Key? key,
      required this.category,
      required this.image,
      required this.press})
      : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Container(
        margin: EdgeInsets.only(left: 13),
        child: SizedBox(
          width: 130,
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kPrimaryColor.withOpacity(0.6),
                        kPrimaryColor.withOpacity(0.6)
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                )),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "$category",
                    style: kDescriptionList,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
