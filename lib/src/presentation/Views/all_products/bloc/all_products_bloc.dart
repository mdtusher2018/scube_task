import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/domain/entites/all_product_entity.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_product_state.dart';


import 'all_products_event.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final ProductUseCase useCase;

  int _page = 1;
  bool _hasNextPage = true;
  bool _isFetching = false;

  AllProductsBloc(this.useCase) : super(AllProductsInitial()) {
    on<FetchAllProducts>(_onFetch);
  }

  Future<void> _onFetch(
    FetchAllProducts event,
    Emitter<AllProductsState> emit,
  ) async {
    if (_isFetching) return;

    if (event.isRefresh) {
      _page = 1;
      _hasNextPage = true;
    }

    if (!_hasNextPage) return;

    _isFetching = true;

    if (_page == 1) {
      emit(AllProductsLoading());
    } else if (state is AllProductsLoaded) {
      emit((state as AllProductsLoaded).copyWith(isFetchingMore: true));
    }

    final result = await useCase.getAllProducts(page: _page);

    if (result is FailureResult) {
      emit(AllProductsError(((result as FailureResult).error as Failure).message));
      _isFetching = false;
      return;
    }

    final newData = (result as Success).data as AllProductsEntity;

    if (state is AllProductsLoaded && _page > 1) {
      final current = (state as AllProductsLoaded).data;

      emit(
        AllProductsLoaded(
          data: current.copyWith(
            products: [...current.products, ...newData.products],
            currentPage: newData.currentPage,
            hasNextPage: newData.hasNextPage,
          ),
        ),
      );
    } else {
      emit(AllProductsLoaded(data: newData));
    }

    _hasNextPage = newData.hasNextPage;
    _page++;
    _isFetching = false;
  }
}
