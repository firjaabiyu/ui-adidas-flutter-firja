import 'package:adidas/pages/home/cart/cart.dart';
import 'package:flutter/material.dart';
import '../detail/detail.dart';
import 'dart:async';

part 'category/bag.dart';

part 'category/hat.dart';

part 'category/jacket.dart';

part 'category/jerseys.dart';

part 'category/pants.dart';

part 'category/shoes.dart';

part 'category/tshirt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _curentImg = 0;
  Timer? _timer;

  final List<String> _images = [
    'assets/images/banner.png',
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.png',
  ];



  @override
  void initState() {
    super.initState();
    _autoSlide();
  }

  void _autoSlide() {
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_curentImg < _images.length - 1) {
        _curentImg++;
      } else {
        _curentImg = 0;
      }
      _pageController.animateToPage(
        _curentImg,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  int selectedIndex = 0;

  Container buildCategory(String catName, int index) {
    return Container(
      decoration: BoxDecoration(
        color: selectedIndex == index ? Colors.black : Color(0xffC9C9C9),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Text(
          catName,
          style: TextStyle(
            color: selectedIndex == index ? Colors.white : Color(0xff878787),
            fontWeight:
                selectedIndex == index ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ),
    );
  }

  final List<String> _titleBanner = [
    'Your Style, Your Way',
    'Football Kits',
    'Jose Mourinho',
    'Jacket',
  ];

  final List<String> _subtitleBanner = [
    'In Every Item We Provide',
    'these clubs. absolute beauty.',
    'JJJJound & adidas',
    'Fall ‘24 collection'
  ];


  List<Widget> Category = [
    shoesPage(),
    shirtPage(),
    jerseyPage(),
    jacketPage(),
    pantsPage(),
    bagPage(),
    hatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adidas",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cartPage()));
                          });
                        },
                        icon: Icon(Icons.shopping_basket_outlined),
                      ),
                      Positioned(
                        right: 9,
                        top: 10,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Color(0xffFF4633),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ],
              )
            ],
          ),
        ), //nav atas
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 173,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _images.length,
              itemBuilder: (BuildContext context, int index) {
                final title = _titleBanner[index];
                final subtitle = _subtitleBanner[index];
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Image.asset(_images[index]),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 27),
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              onPageChanged: (int page){
                _curentImg = page;
              },
            ),
          ),
        ), //banner "your style your way"
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FEATURED ITEMS",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 2),
                  children: [
                    buildCategory("Shoes", 0),
                    const SizedBox(width: 10),
                    buildCategory("t-Shirt", 1),
                    const SizedBox(width: 10),
                    buildCategory("Jerseys", 2),
                    const SizedBox(width: 10),
                    buildCategory("Jacket", 3),
                    const SizedBox(width: 10),
                    buildCategory("Pants", 4),
                    const SizedBox(width: 10),
                    buildCategory("Bag", 5),
                    const SizedBox(width: 10),
                    buildCategory("hat", 6),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Category[selectedIndex],
        SizedBox(height: 85),
      ],
    );
  }
}
