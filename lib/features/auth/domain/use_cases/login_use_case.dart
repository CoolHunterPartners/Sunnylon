import '../../../../core/common/helpers/result.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Result<User>> call({
    required String email,
    required String password,
  }) async {
    final loginResult = await _repository.login(
      email: email,
      password: password,
    );

    return loginResult.fold(
      (data) async {
        return await _repository.getProfile();
      },
      (failure) {
        return Result.failure(failure);
      },
    );
  }
}
