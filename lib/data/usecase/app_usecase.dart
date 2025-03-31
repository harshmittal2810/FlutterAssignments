import 'package:flutter_assignments/domain/entity/responses/app_country.dart';
import 'package:flutter_assignments/domain/entity/responses/app_state.dart';
import 'package:flutter_assignments/domain/repository/app_repository.dart';

class AppUseCase {
  final AppRepository _appRepository;

  AppUseCase(this._appRepository);

  Future<List<AppCountry>> getCountries() async {
    return _appRepository.getCountries();
  }

  Future<List<AppState>> getStates({required int countryId}) async {
    return _appRepository.getStates(countryId: countryId);
  }
}
