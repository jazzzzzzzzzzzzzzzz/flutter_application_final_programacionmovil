import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return const Center(
            child: Text(
              'Home',
              style: TextStyle(color: green, fontSize: 32),
            ),
          );
        case 1:
          return const Center(
            child: Text(
              'Seach',
              style: TextStyle(color: green, fontSize: 32),
            ),
          );
        case 2:
          return const Center(
            child: Text(
              'Library',
              style: TextStyle(color: green, fontSize: 32),
            ),
          );
        case 3:
          return const Center(
            child: Text(
              'Profile',
              style: TextStyle(color: green, fontSize: 32),
            ),
          );
        default:
          return const Center(
            child: Text(
              'Home',
              style: TextStyle(color: green, fontSize: 32),
            ),
          );
      }
    }

    return Scaffold(
      backgroundColor: black,
      body: body(),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Stack(
          children: [
            Image.asset(
              'assets/cover/halsey.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            BgBlur(
              blur: 10,
              opacity: 0.8,
              color: black,
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                    border: Border(top: BorderSide(color: green))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      icons.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currentPage = index;
                              });
                            },
                            child: SizedBox(
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 250),
                                    width: currentPage == index ? 24 : 0,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: currentPage == index
                                            ? green
                                            : white,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Icon(
                                    icons[index],
                                    color: currentPage == index ? green : white,
                                  ),
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BgBlur extends StatelessWidget {
  final double opacity, blur;
  final Widget child;
  final Color color;
  const BgBlur({
    Key? key,
    required this.opacity,
    required this.blur,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur,
          tileMode: TileMode.clamp,
        ),
        child: Container(
            decoration: BoxDecoration(color: color.withOpacity(opacity)),
            child: child),
      ),
    );
  }
}
