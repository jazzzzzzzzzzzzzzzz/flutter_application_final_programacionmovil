import 'package:flutter/material.dart';

import '../const.dart';

class HomePageTitle extends StatelessWidget {
  final String text;
  const HomePageTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: white, fontWeight: FontWeight.w600),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_rounded,
            color: white,
          )
        ],
      ),
    );
  }
}
