import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';
import 'package:flutter_application_final_programacionmovil/providers/page_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/bgblur.dart';
import '../widgets/cutom_bottom_nav.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    Widget body() {
      switch (pageProvider.currentPage) {
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
                  CustomBottomNAv(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
