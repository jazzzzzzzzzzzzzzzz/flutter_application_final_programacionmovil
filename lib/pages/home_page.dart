import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_final_programacionmovil/models/artists.dart';
import 'package:flutter_application_final_programacionmovil/models/packages.dart';
import 'package:flutter_application_final_programacionmovil/models/songs.dart';
import 'package:flutter_application_final_programacionmovil/pages/music_detail.dart';
import 'package:flutter_application_final_programacionmovil/providers/package_provider.dart';
import 'package:provider/provider.dart';

import '../const.dart';
import '../widgets/fav_artist_item.dart';
import '../widgets/home_page_header.dart';
import '../widgets/home_page_title.dart';
import '../widgets/song_package_item.dart';
import 'package_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SongModel> recent = listSongs;
    List<PackageModel> madeForYou = packages;
    List<PackageModel> popular_hits = packages.reversed.toList();
    PackageProvider packageProvider = Provider.of<PackageProvider>(context);
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            HomePageHeader(),
            const SizedBox(height: 20),
            const HomePageTitle(text: 'Tu Artista favorito'),
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
            ),
            const SizedBox(height: 20),
            const HomePageTitle(text: 'Reproducion reciente'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                      madeForYou.length,
                      (index) => Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 10, right: 10)
                              : const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              packageProvider.currentPackage =
                                  madeForYou[index];
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MusicDetail()));
                            },
                            child: GestureDetector(
                              onTap: () {},
                              child: SongPackageItem(
                                  image: 'cover/${recent[index].image}',
                                  text: recent[index].title!),
                            ),
                          )))
                ],
              ),
            ),
            const SizedBox(height: 20),
            const HomePageTitle(text: 'Hecho para ti'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                      madeForYou.length,
                      (index) => Padding(
                            padding: index == 0
                                ? const EdgeInsets.only(left: 10, right: 10)
                                : const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const PackagePage())));
                              },
                              child: SongPackageItem(
                                  image: 'package/${madeForYou[index].image}',
                                  text: madeForYou[index].name!),
                            ),
                          ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            const HomePageTitle(text: 'Exitos populares'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                      popular_hits.length,
                      (index) => Padding(
                            padding: index == 0
                                ? const EdgeInsets.only(left: 10, right: 10)
                                : const EdgeInsets.only(right: 10),
                            child: SongPackageItem(
                                image: 'package/${madeForYou[index].image}',
                                text: popular_hits[index].name!),
                          ))
                ],
              ),
            ),
          ],
        ));
  }
}
