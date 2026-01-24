import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';

class AllProductsEntity {
  final List<ProductEntity> products;

  final int currentPage;
  final int lastPage;
  final bool hasNextPage;
  final int total;

  const AllProductsEntity({
    required this.products,
    required this.currentPage,
    required this.lastPage,
    required this.hasNextPage,
    required this.total,
  });

  AllProductsEntity copyWith({
    List<ProductEntity>? products,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    int? total,
  }) {
    return AllProductsEntity(
      products: products ?? this.products,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      total: total ?? this.total,
    );
  }
}
