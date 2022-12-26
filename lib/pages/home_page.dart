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
import '../providers/recent_played_provider.dart';
import '../providers/song_provider.dart';
import '../widgets/fav_artist_item.dart';
import '../widgets/home_page_header.dart';
import '../widgets/home_page_title.dart';
import '../widgets/song_package_item.dart';
import 'package_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //sementara kita pakai listSong karena belu ada data recent
    RecentProvider recentProvider = Provider.of<RecentProvider>(context);
    List<SongModel> recent = recentProvider.recent.reversed.toList();
    List<PackageModel> madeForYou = packages;
    List<PackageModel> popularHits = packages.reversed.toList();
    PackageProvider packageProvider = Provider.of<PackageProvider>(context);
    SongProvider songProvider = Provider.of<SongProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const HomePageHeader(),
          Column(
            children: [
              const SizedBox(height: 20),
              const HomePageTitle(text: 'Your Favorite artist'),
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
            ],
          ),
          recent.isNotEmpty
              ? Column(
                  children: [
                    const SizedBox(height: 20),
                    const HomePageTitle(text: 'Recent Played'),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            ...List.generate(
                                recent.length,
                                (index) => Padding(
                                      padding: index == 0
                                          ? const EdgeInsets.only(
                                              left: 10, right: 10)
                                          : const EdgeInsets.only(right: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          songProvider.currentSong =
                                              recent[index];
                                          packageProvider.currentPackage = null;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MusicDetail()));
                                        },
                                        child: SongPackageItem(
                                            image:
                                                'cover/${recent[index].image}',
                                            text: recent[index].title!),
                                      ),
                                    ))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Container(),
          Column(
            children: [
              const SizedBox(height: 20),
              const HomePageTitle(text: 'Made for you'),
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
                                              const PackagePage()));
                                },
                                child: SongPackageItem(
                                    image: 'package/${madeForYou[index].image}',
                                    text: madeForYou[index].name!),
                              ),
                            ))
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              const HomePageTitle(text: 'Popular Hits'),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ...List.generate(
                        popularHits.length,
                        (index) => Padding(
                              padding: index == 0
                                  ? const EdgeInsets.only(left: 10, right: 10)
                                  : const EdgeInsets.only(right: 10),
                              child: SongPackageItem(
                                  image: 'package/${popularHits[index].image}',
                                  text: popularHits[index].name!),
                            ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
