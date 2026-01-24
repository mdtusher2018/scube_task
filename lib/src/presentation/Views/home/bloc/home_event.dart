import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchHomeData extends HomeEvent {}

class SearchHomeProducts extends HomeEvent {
  final String query;
  SearchHomeProducts(this.query);
}