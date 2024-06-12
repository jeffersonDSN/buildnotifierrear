import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIUsersRepository
    implements AbsICRUDRepository<User> {
  Future<User?> getUserByUserNamePassword(String userName, String password);

  Future<List<User>> getUserByUserName(String userName);
}
