import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/data/models/category_model.dart';
import 'package:scube_task/src/data/models/product_model.dart';

part 'product_by_category_response.freezed.dart';
part 'product_by_category_response.g.dart';

@freezed
abstract class ProductByCategoryResponse with _$ProductByCategoryResponse {
  const factory ProductByCategoryResponse({
    required Category category,
    required List<Product> products,
  }) = _ProductByCategoryResponse;

  factory ProductByCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductByCategoryResponseFromJson(json);
}
