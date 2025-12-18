import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/config/router/app_router.dart';
import 'package:scube_task/src/core/di/dependency_injection.dart';
import 'package:scube_task/src/core/services/snackbar/snackbar_service.dart';


/// Application entry point
/// 
/// - Ensures Flutter bindings are initialized
/// - Wraps the app with [ProviderScope] to enable Riverpod
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}
/// Root widget of the application
/// 
/// Uses [ConsumerWidget] to access global providers such as:
/// - App router
/// - Snackbar service
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snackBarService = ref.read(snackBarServiceProvider);
    final router = ref.watch(appRouterProvider);

      /// ScreenUtilInit Helps maintain consistent UI scaling across devices
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X / Figma standard
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          /// Centralized [ScaffoldMessengerKey] for global snackbars
          scaffoldMessengerKey:
              (snackBarService as SnackBarService).messengerKey,
          title: 'Scube Task App',
          debugShowCheckedModeBanner: false,
          /// Using Material 3 for modern UI
          theme: ThemeData(primaryColor: Colors.blue, useMaterial3: true),
          /// Router-based navigation (go_router / router config)
          routerConfig: router,
        );
      },
    );
  }
}
