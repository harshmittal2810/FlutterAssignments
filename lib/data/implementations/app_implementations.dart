import 'package:flutter_assignments/core/network/api_client.dart';
import 'package:flutter_assignments/domain/repository/app_repository.dart';

class AppImplementations implements AppRepository {
  final ApiClient apiService;

  AppImplementations({required this.apiService});
}
