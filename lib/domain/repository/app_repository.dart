import '../../core/network/api_client.dart';

abstract class AppRepository {
  final ApiClient _apiClient;

  AppRepository(this._apiClient);
}
