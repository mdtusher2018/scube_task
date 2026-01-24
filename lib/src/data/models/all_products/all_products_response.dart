




// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/data/models/product_model/product_model.dart';
import 'package:scube_task/src/domain/entites/all_product_entity.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
part 'all_products_response.freezed.dart';
part 'all_products_response.g.dart';

@freezed
abstract class AllProductsResponse with _$AllProductsResponse {
  const factory AllProductsResponse({
    ProductsPagination? products,
  }) = _AllProductsResponse;

  factory AllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductsResponseFromJson(json);
}


@freezed
abstract class ProductsPagination with _$ProductsPagination {
  const factory ProductsPagination({
    @JsonKey(name: 'current_page') int? currentPage,
    List<Product>? data,

    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,

    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,

    List<PaginationLink>? links,

    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,

    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,

    int? to,
    int? total,
  }) = _ProductsPagination;

  factory ProductsPagination.fromJson(Map<String, dynamic> json) =>
      _$ProductsPaginationFromJson(json);
}
@freezed
abstract class PaginationLink with _$PaginationLink {
  const factory PaginationLink({
    String? url,
    String? label,
    bool? active,
  }) = _PaginationLink;

  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);
}


extension AllProductsResponseMapper on AllProductsResponse {
  AllProductsEntity toEntity() {
    final pagination = products;

    return AllProductsEntity(
      products: pagination?.data
              ?.map((product) => product.toEntity())
              .toList() ??
          <ProductEntity>[],
      currentPage: pagination?.currentPage ?? 1,
      lastPage: pagination?.lastPage ?? 1,
      hasNextPage: pagination?.nextPageUrl != null,
      total: pagination?.total ?? 0,
    );
  }
}





