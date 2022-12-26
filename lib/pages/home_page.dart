import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: const [
                Text(
                  'Hola',
                  style: TextStyle(color: white, fontSize: 18),
                ),
                Text(
                  'Let',
                  style: TextStyle(color: white, fontSize: 12),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
