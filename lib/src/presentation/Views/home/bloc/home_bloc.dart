
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';
import 'package:scube_task/src/domain/usecase/home_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase useCase;

  HomeBloc(this.useCase) : super(HomeInitial()) {
    on<FetchHomeData>((event, emit) async {
      emit(HomeLoading());

      final result = await useCase.getHomeData();

      if (result is FailureResult) {
        emit(HomeError(((result as FailureResult).error as Failure).message));
        return;
      }

      emit(
        HomeLoaded(
          home: (result as Success).data as HomeEntity,
          filteredProducts:
              ((result as Success).data as HomeEntity).newArrivals,
        ),
      );
    });

    on<SearchHomeProducts>((event, emit) {
      if (state is! HomeLoaded) return;

      final current = state as HomeLoaded;
      final query = event.query.trim().toLowerCase();

      if (query.isEmpty) {
        emit(current.copyWith(filteredProducts: current.home.newArrivals));
        return;
      }

      final filtered = current.home.newArrivals.where((product) {
        final titleMatch = product.name.toLowerCase().contains(query);

        return titleMatch;
      }).toList();

      emit(current.copyWith(filteredProducts: filtered));
    });
  }
}
