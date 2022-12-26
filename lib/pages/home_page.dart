import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_final_programacionmovil/models/artists.dart';

import '../const.dart';
import '../widgets/fav_artist_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hola',
                      style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Let',
                      style: TextStyle(color: white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: white.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    const Icon(
                      Icons.notifications_outlined,
                      color: white,
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Tu Artista Favorito',
                  style: TextStyle(color: white, fontWeight: FontWeight.w600),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: white,
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(
                  listArtists.length,
                  (index) => Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(left: 10, right: 10)
                            : const EdgeInsets.only(right: 10),
                        child: FavArtistItem(
                          artist: listArtists[index],
                        ),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
