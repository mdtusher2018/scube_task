// features/authentication/domain/notifiers/login_notifier.dart
import '../../../../core/di/dependency_injection.dart';
import 'package:scube_task/src/features/authentication/domain/entites/signin_entity.dart';
import 'package:scube_task/src/features/authentication/domain/usecase/signin_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scube_task/src/core/base/result.dart';

part 'signin_notifier.g.dart';


/// LoginNotifier handles authentication state using Riverpod
/// 
/// - Responsible only for state management
/// - Delegates business logic to the SigninUseCase
/// - Keeps UI concerns out of the domain layer
@riverpod
class LoginNotifier extends _$LoginNotifier {
  late final SigninUseCase _useCase;

  /// Initializes the notifier and injects dependencies
  /// 
  /// Returning `null` represents the initial idle state
  /// before any login action is triggered
  @override
  FutureOr<SigninEntity?> build() {
    _useCase = ref.watch(loginUseCaseProvider);
    return null;
  }

  /// Triggers the login process
  /// 
  /// - Emits loading state
  /// - Executes the use case
  /// - Maps domain result to UI-friendly states
  Future<void> login({required String email, required String password}) async {
       // Emit loading state before API execution
    state = const AsyncLoading();

    final result = await _useCase.execute(email: email, password: password);

    switch (result) {
      /// Successful authentication
      case Success(:final data):
        state = AsyncData(data);
        return;

      /// Failed authentication
      /// Error details are propagated to the UI layer
      case FailureResult(:final error):
        state = AsyncError(
          error.message,
          error.stackTrace ?? StackTrace.fromString("No trace found"),
        );

        return;
    }
  }
}
