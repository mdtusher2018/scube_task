import 'package:scube_task/src/domain/entites/all_product_entity.dart';

abstract class AllProductsState {}

class AllProductsInitial extends AllProductsState {}

class AllProductsLoading extends AllProductsState {}

class AllProductsLoaded extends AllProductsState {
  final AllProductsEntity data;
  final bool isFetchingMore;

  AllProductsLoaded({
    required this.data,
    this.isFetchingMore = false,
  });

  AllProductsLoaded copyWith({
    AllProductsEntity? data,
    bool? isFetchingMore,
  }) {
    return AllProductsLoaded(
      data: data ?? this.data,
      isFetchingMore: isFetchingMore ?? this.isFetchingMore,
    );
  }
}

class AllProductsError extends AllProductsState {
  final String message;
  AllProductsError(this.message);
}
