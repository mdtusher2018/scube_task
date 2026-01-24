import 'package:equatable/equatable.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final HomeEntity home;
  final List<ProductEntity> filteredProducts;
  HomeLoaded({
    required this.home,
    required this.filteredProducts,
  });

  HomeLoaded copyWith({
    HomeEntity? home,
    List<ProductEntity>? filteredProducts,
  }) {
    return HomeLoaded(
      home: home ?? this.home,
      filteredProducts: filteredProducts ?? this.filteredProducts,
    );
  }

@override
List<Object?> get props => [home, filteredProducts];

}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}
