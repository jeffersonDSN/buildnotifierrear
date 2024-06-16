import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_users_repository.dart';

class UsersController extends CRUDController<User> {
  final AbsIUsersRepository _repository;

  UsersController({required AbsIUsersRepository repository})
      : _repository = repository,
        super(repository: repository);

  Future<User?> getUserByUserNamePassword(String userName, String password) {
    return _repository.getUserByUserNamePassword(userName, password);
  }
}
