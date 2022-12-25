class ArtistModel {
  final String? name, image, id;
  ArtistModel({
    required this.name,
    required this.image,
    required this.id,
  });
}

List<ArtistModel> listArtists = [
  ArtistModel(id: 'user1', name: 'Halsey', image: 'Halsey.jpg'),
  ArtistModel(id: 'user2', name: 'Dua Lipa', image: 'Dualipa.jpg'),
  ArtistModel(id: 'user3', name: 'Ariana Grande', image: 'Arianagrande.jpg'),
  ArtistModel(id: 'user4', name: 'Shawn Mendes', image: 'Shawn.jpg'),
  ArtistModel(id: 'user5', name: 'Charlie Puth', image: 'Charlie.jpg'),
];
