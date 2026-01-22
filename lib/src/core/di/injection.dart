import 'package:get_it/get_it.dart';
import 'package:scube_task/src/config/router/app_router.dart';
import 'package:scube_task/src/core/services/network/api_client.dart';
import 'package:scube_task/src/core/services/network/api_service.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/services/snackbar/i_snackbar_service.dart';
import 'package:scube_task/src/core/services/snackbar/snackbar_service.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/local_storage_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // 🌟 Local Storage
  getIt.registerLazySingleton<ILocalStorageService>(
    () => LocalStorageService(),
  );

  // 🌟 Router (needed for navigatorKey)
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  // 🌟 Api Client
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: ApiEndpoints.baseUrl,
      localStorage: getIt<ILocalStorageService>(),
      navigatorKey: getIt<AppRouter>().router.routerDelegate.navigatorKey,
    ),
  );

  // 🌟 Api Service
  getIt.registerLazySingleton<IApiService>(
    () => ApiService(getIt<ApiClient>(), baseUrl: ApiEndpoints.baseUrl),
  );

  // 🌟 Snackbar Service
  getIt.registerLazySingleton<ISnackBarService>(() => SnackBarService());
}
