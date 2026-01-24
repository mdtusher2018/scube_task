import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/presentation/Views/all_products/all_products_page.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_products_bloc.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_products_event.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/product_by_category_page.dart';
import 'package:scube_task/src/presentation/Views/product_details/product_details.dart';
import 'package:scube_task/src/presentation/Views/root_page.dart';
import 'routes.dart';

class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: AppRoutes.root,
      routes: [
        GoRoute(path: AppRoutes.root, builder: (context, state) => RootPage()),
        GoRoute(
          path: AppRoutes.allProducts,
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<AllProductsBloc>()..add(FetchAllProducts()),
            child: AllProductsPage(),
          ),
        ),
        GoRoute(
          path: AppRoutes.produceDetails,

          builder: (context, state) {
            final String slug =
                (state.extra as Map<String, String>)['slug'] ?? "";
            return ProductDetailsPage(slug: slug);
          },
        ),
        GoRoute(
          path: AppRoutes.produceByCategory,

          builder: (context, state) {
            final String id = (state.extra as Map<String, String>)['id'] ?? "";
            return ProductByCategoryPage(id: id);
          },
        ),
      ],
    );
  }
}
