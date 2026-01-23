import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/product_response/product_details_response.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

final class ProductRepository extends IProductRepository {
  final IApiService api;
  ProductRepository(this.api);

  @override
  Future<Result<ProductDetailsResponse, Failure>> getProductDetails({
    required String slug,
  }) async {
    return asyncGuard(() async {
      final response = await api.get(ApiEndpoints.productDetails(slug));
      return ProductDetailsResponse.fromJson(response);
    });
  }
}
