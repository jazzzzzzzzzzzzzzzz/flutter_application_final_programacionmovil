import 'package:flutter/cupertino.dart';
import 'package:flutter_application_final_programacionmovil/models/packages.dart';

class PackageProvider with ChangeNotifier {
  PackageModel? _currentPackage;
  PackageModel? get currentPackage => _currentPackage;
  set currentPackage(PackageModel? current) {
    _currentPackage = current;
    notifyListeners();
  }

  totalLikes() {
    int likes = 0;
    for (var element in _currentPackage!.songs!) {
      likes += element.likes!.length;
    }
    return likes;
  }
}
