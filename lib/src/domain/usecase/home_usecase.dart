// features/authentication/domain/usecases/login_usecase.dart

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/home_response/home_response.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';
import 'package:scube_task/src/domain/repositories/i_home_repository.dart';

class HomeUseCase {
  final IHomeRepository repository;

  HomeUseCase({required this.repository});

  Future<Result<HomeEntity, Failure>> getHomeData() async {
    final result = await repository.getHomeData();

    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    return Success(((result as Success).data as HomeResponse).toEntity());
  }
}
