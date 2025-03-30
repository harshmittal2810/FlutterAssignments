import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_assignments/data/usecase/app_usecase.dart';
import 'package:flutter/foundation.dart';

class AppProvider with ChangeNotifier {
  final AppUseCase getAppUseCase;

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  AppProvider({required this.getAppUseCase}) {
    //TODO init api call
  }
}
