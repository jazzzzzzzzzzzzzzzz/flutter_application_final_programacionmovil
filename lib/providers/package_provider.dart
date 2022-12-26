import 'package:flutter/cupertino.dart';
import 'package:flutter_application_final_programacionmovil/models/packages.dart';

class PackageProvider with ChangeNotifier {
  PackageModel? _currentPackage;
  PackageModel? get currentPackage => _currentPackage;
  set currentPackage(PackageModel? current) {
    _currentPackage = current;
    notifyListeners();
  }
}
