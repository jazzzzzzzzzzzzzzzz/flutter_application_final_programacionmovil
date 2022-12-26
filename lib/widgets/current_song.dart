import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/const.dart';

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
