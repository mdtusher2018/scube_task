import 'package:go_router/go_router.dart';
import 'package:scube_task/src/presentation/features/home/home_page.dart';
import 'package:scube_task/src/presentation/features/product/product_details.dart';
import 'routes.dart';

class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: AppRoutes.home,
      routes: [
        GoRoute(path: AppRoutes.home, builder: (context, state) => HomePage()),
        GoRoute(
          path: AppRoutes.produceDetails,

          builder: (context, state) {
            final String id =
                (state.extra as Map<String, String>)['slug'] ?? "";
            return ProductDetailsPage(slug: id);
          },
        ),
      ],
    );
  }
}
