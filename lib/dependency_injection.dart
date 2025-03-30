import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_assignments/data/usecase/app_usecase.dart';
import 'core/network/api_client.dart';
import 'core/services/app_local_storage services.dart';
import 'data/implementations/app_implementations.dart';
import 'domain/repository/app_repository.dart';
import 'local_database/database/appdatabase.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: dotenv.env['BASE_URL']!,
      apiKey: dotenv.env['API_KEY']!,
    ),
  );

  getIt.registerLazySingleton(() => AppDatabase.instance);
  var instance = await SmartLocalStorageServices.getinstance();
  getIt.registerLazySingleton<SmartLocalStorageServices>(() => instance);
  getIt.registerLazySingleton<AppRepository>(
    () => AppImplementations(apiService: getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<AppImplementations>(
    () => AppImplementations(apiService: getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<AppUseCase>(
    () => AppUseCase(getIt<AppRepository>()),
  );
  //
}
