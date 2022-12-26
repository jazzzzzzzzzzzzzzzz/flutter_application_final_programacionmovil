import 'package:flutter_application_final_programacionmovil/models/songs.dart';

class PackageModel {
  final String? idPackage, name, image;
  final List<SongModel>? songs;

  PackageModel({
    required this.idPackage,
    required this.name,
    required this.image,
    required this.songs,
  });
}

List<PackageModel> packages = [
  PackageModel(
    idPackage: 'idPackage1',
    name: 'Top Song 2022',
    image: 'image1.jpg',
    songs: [
      listSongs[5],
      listSongs[0],
      listSongs[1],
      listSongs[6],
      listSongs[3],
      listSongs[4],
    ],
  ),
  PackageModel(
    idPackage: 'idPackage2',
    name: 'Top Song 2022',
    image: 'image2.jpg',
    songs: [
      listSongs[5],
      listSongs[0],
      listSongs[1],
      listSongs[6],
      listSongs[3],
      listSongs[4],
    ],
  ),
  PackageModel(
    idPackage: 'idPackage3',
    name: 'Top Song 2022',
    image: 'image3.jpg',
    songs: [
      listSongs[5],
      listSongs[0],
      listSongs[1],
      listSongs[6],
      listSongs[3],
      listSongs[4],
    ],
  ),
  PackageModel(
    idPackage: 'idPackage4',
    name: 'Top Song 2022',
    image: 'image4.jpg',
    songs: [
      listSongs[5],
      listSongs[0],
      listSongs[1],
      listSongs[6],
      listSongs[3],
      listSongs[4],
    ],
  ),
  PackageModel(
    idPackage: 'idPackage5',
    name: 'Top Song 2022',
    image: 'image5.jpg',
    songs: [
      listSongs[5],
      listSongs[0],
      listSongs[1],
      listSongs[6],
      listSongs[3],
      listSongs[4],
    ],
  ),
];
