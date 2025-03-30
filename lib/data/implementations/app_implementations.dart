import 'package:flutter_assignments/core/network/api_client.dart';
import 'package:flutter_assignments/domain/entity/responses/app_country.dart';
import 'package:flutter_assignments/domain/entity/responses/app_state.dart';
import 'package:flutter_assignments/domain/repository/app_repository.dart';

class AppImplementations implements AppRepository {
  final ApiClient apiService;

  AppImplementations({required this.apiService});

  @override
  Future<List<AppCountry>> getCountries() async {
    final response = await apiService.get('/countries');
    if (response.data is List) {
      final List<dynamic> data = response.data;
      return data.map((json) => AppCountry.fromJson(json)).toList();
    } else {
      throw Exception("Unexpected API response format");
    }
  }

  @override
  Future<List<AppState>> getStates({required String countryId}) async {
    final response = await apiService.get('/countries/$countryId/states');
    if (response.data is List) {
      final List<dynamic> data = response.data;
      return data.map((json) => AppState.fromJson(json)).toList();
    } else {
      throw Exception("Unexpected API response format");
    }
  }
}
