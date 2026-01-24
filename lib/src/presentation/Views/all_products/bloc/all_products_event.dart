import 'package:equatable/equatable.dart';

abstract class AllProductsEvent extends Equatable {
  const AllProductsEvent();
  @override
  List<Object> get props => [];
}

class FetchAllProducts extends AllProductsEvent {
  final bool isRefresh;
  const FetchAllProducts({this.isRefresh = false});
}
