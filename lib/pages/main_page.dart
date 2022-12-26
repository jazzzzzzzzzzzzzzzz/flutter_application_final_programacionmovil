import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';

import '../widgets/bgblur.dart';

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
              child: Column(
                children: [
                  //CurrentSong
                  CurrentSong(),
                  // custon botton nav
                  CustomBottomNAv(currentPage: currentPage),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNAv extends StatelessWidget {
  const CustomBottomNAv({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          const BoxDecoration(border: Border(top: BorderSide(color: green))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            icons.length,
            (index) => GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          width: currentPage == index ? 24 : 0,
                          height: 3,
                          decoration: BoxDecoration(
                              color: currentPage == index ? green : white,
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
    );
  }
}

class CurrentSong extends StatelessWidget {
  const CurrentSong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/cover/halsey.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Without Me',
                    style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text('Halsey', style: TextStyle(color: white, fontSize: 11)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: white,
            ),
          ),
          Container(
            width: 24,
            height: 24,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(green),
                  value: 0.5,
                  strokeWidth: 2,
                ),
                /* IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: white,
                    size: 20,
                  ),
                ),  */
                Icon(
                  Icons.play_arrow_rounded,
                  color: white,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
