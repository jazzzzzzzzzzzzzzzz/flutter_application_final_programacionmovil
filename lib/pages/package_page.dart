import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({Key? key}) : super(key: key);

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_left_rounded, color: white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_rounded)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Image.asset(
            'assets/package/image1.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
