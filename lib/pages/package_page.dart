import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';
import 'package:flutter_application_final_programacionmovil/models/packages.dart';

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
              icon:
                  const Icon(Icons.keyboard_arrow_left_rounded, color: white)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width + 30,
            child: Stack(
              children: [
                Image.asset(
                  'assets/package/image1.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Todays TOP HITS',
                            style: TextStyle(
                                color: white,
                                fontSize: 48,
                                fontWeight: FontWeight.bold)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: const [
                                //
                                Icon(
                                  Icons.favorite,
                                  color: grey,
                                  size: 12,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '123 likes',
                                  style: TextStyle(color: grey, fontSize: 12),
                                )
                              ],
                            ),
                            const SizedBox(width: 10),
                            Row(
                              children: const [
                                Icon(
                                  Icons.timer,
                                  color: grey,
                                  size: 12,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '2h 30m',
                                  style: TextStyle(color: grey, fontSize: 12),
                                )
                              ],
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: green),
                              child: const Icon(
                                Icons.play_arrow_rounded,
                                size: 52,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            ' Presentando',
            style: TextStyle(color: white, fontSize: 14),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              ...List.generate(packages[0].songs!.length, (index) {
                var data = packages[0].songs![index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/cover/${data.image}'),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title!,
                            style: const TextStyle(color: white),
                          ),
                          Text(
                            data.singer!,
                            style: const TextStyle(color: white, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                );
              })
            ],
          )
        ]));
  }
}
