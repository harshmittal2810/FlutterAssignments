import 'package:flutter_assignments/domain/entity/responses/app_state.dart';

import '../../core/network/api_client.dart';
import '../entity/responses/app_country.dart';

abstract class AppRepository {
  final ApiClient _apiClient;

  AppRepository(this._apiClient);

  Future<List<AppCountry>> getCountries();

  Future<List<AppState>> getStates({required String countryId});
}
