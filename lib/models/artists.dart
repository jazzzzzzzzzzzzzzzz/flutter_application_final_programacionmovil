class ArtistModel {
  final String? name, image, id;
  ArtistModel({
    required this.name,
    required this.image,
    required this.id,
  });
}

List<ArtistModel> listArtists = [
  ArtistModel(
    id: 'user1',
    name: 'Ariana Grande',
    image: 'arianagrande.jpg',
  ),
  ArtistModel(
    id: 'user2',
    name: 'BTS',
    image: 'bts.jpg',
  ),
  ArtistModel(
    id: 'user3',
    name: 'Charlie Puth',
    image: 'charlie.jpg',
  ),
  ArtistModel(
    id: 'user4',
    name: 'Dua Lipa',
    image: 'dualipa.jpg',
  ),
  ArtistModel(
    id: 'user5',
    name: 'Halsey',
    image: 'halsey.jpg',
  ),
  ArtistModel(
    id: 'user6',
    name: 'Jonas Brothers',
    image: 'jonas.jpg',
  ),
  ArtistModel(
    id: 'user7',
    name: 'Shawn Mendez',
    image: 'shawn.jpg',
  ),
];
