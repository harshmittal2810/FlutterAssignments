import 'package:flutter/material.dart';
import 'package:flutter_assignments/common/utils/enums/app_enums.dart';
import 'package:flutter_assignments/domain/entity/responses/app_country.dart';
import 'package:flutter_assignments/data/usecase/app_usecase.dart';

class AppProvider with ChangeNotifier {
  final AppUseCase getAppUseCase;
  final List<AppCountry> _countries = [];

  List<AppCountry> get countries => _countries;
  UserState _state = UserState.loading;

  UserState get state => _state;
  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  AppProvider({required this.getAppUseCase}) {
    //TODO init api call
  }

  Future<void> fetchCountryList() async {
    _state = UserState.loading;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });

    try {
      final countryList = await getAppUseCase.getCountries();
      if (countryList.isNotEmpty) {
        _countries.clear();
        _countries.addAll(countryList);
        _state = UserState.loaded;
        print("Countries fetched successfully!");
      } else {
        _state = UserState.error;
        _errorMessage = "Failed to fetch countries.";
        print("Failed to fetch countries.${UserState.error.toString()}");
      }
    } catch (e) {
      _state = UserState.error;
      _errorMessage = "Failed to fetch countries: $e";
      print("Failed to fetch countries: $e");
    }
    notifyListeners();
  }
}
