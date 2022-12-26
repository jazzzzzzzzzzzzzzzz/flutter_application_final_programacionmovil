import 'package:flutter/material.dart';

import '../const.dart';

class MusicDetail extends StatefulWidget {
  const MusicDetail({Key? key}) : super(key: key);

  @override
  State<MusicDetail> createState() => _MusicDetailState();
}

class _MusicDetailState extends State<MusicDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/cover/halseyy.jpg',
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: transparent,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.keyboard_arrow_left_rounded,
                    color: white)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
            ],
          ),
        )
      ],
    );
  }
}
