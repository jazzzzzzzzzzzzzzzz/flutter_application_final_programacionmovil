import 'package:flutter/material.dart';
import 'package:flutter_application_final_programacionmovil/providers/song_provider.dart';
import 'package:flutter_lyric/lyric_ui/ui_netease.dart';
import 'package:flutter_lyric/lyrics_model_builder.dart';
import 'package:flutter_lyric/lyrics_reader_widget.dart';

class SongLyric extends StatelessWidget {
  const SongLyric({
    Key? key,
    required this.songProvider,
    required this.lyricUI,
  }) : super(key: key);

  final SongProvider songProvider;
  final UINetease lyricUI;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: LyricsReader(
        model: LyricsModelBuilder.create()
            .bindLyricToMain(songProvider.lyric!)
            .getModel(),
        position: songProvider.playProgress!.toInt(),
        lyricUi: lyricUI,
        playing: songProvider.isPlaying,
        emptyBuilder: () => Center(
          child: Text(
            'No Lyric',
            style: lyricUI.getOtherMainTextStyle(),
          ),
        ),
      ),
    );
  }
}
