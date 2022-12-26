import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';
import 'package:flutter_lyric/lyric_ui/ui_netease.dart';
import 'package:provider/provider.dart';

import '../const.dart';
import '../providers/fav_provider.dart';
import '../providers/package_provider.dart';
import '../providers/song_provider.dart';

class MusicDetail extends StatefulWidget {
  const MusicDetail({Key? key}) : super(key: key);

  @override
  State<MusicDetail> createState() => _MusicDetailState();
}

class _MusicDetailState extends State<MusicDetail> {
  @override
  Widget build(BuildContext context) {
    SongProvider songProvider = Provider.of<SongProvider>(context);
    PackageProvider packageProvider = Provider.of<PackageProvider>(context);
    FavProvider favProvider = Provider.of<FavProvider>(context);

    var lyricUI = UINetease(
        highlight: false,
        defaultSize: 18,
        defaultExtSize: 14,
        bias: 0.5,
        lyricAlign: LyricAlign.CENTER,
        lyricBaseLine: LyricBaseLine.CENTER,
        lineGap: 25,
        inlineGap: 25,
        otherMainSize: 14);
    return Stack(
      children: [
        Image.asset(
          'assets/cover/${songProvider.currentSong!.image!}',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [black.withOpacity(0.6), black.withOpacity(0.2), black],
            stops: const [0.2, 0.6, 1.0],
          )),
        ),
        Scaffold(
          backgroundColor: transparent,
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
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongLyric(songProvider: songProvider, lyricUI: lyricUI),
              MusicController(
                  songProvider: songProvider,
                  favProvider: favProvider,
                  packageProvider: packageProvider),
            ],
          ),
        )
      ],
    );
  }
}
