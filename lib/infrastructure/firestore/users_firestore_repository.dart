import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_users_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class UsersFireStoreRepository implements AbsIUsersRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  final String tenant;

  UsersFireStoreRepository({required this.tenant});

  @override
  Future<User?> getUserByUserNamePassword(
      String userName, String password) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName.toLowerCase())
        .where('password', isEqualTo: password)
        .where('userType', isEqualTo: 1)
        .get();

    var doc = querySnapshot.docs.firstOrNull;
    if (doc != null) {
      var data = doc.data() as Map<String, dynamic>;

      return User.fromJson({...data, 'id': doc.reference.id});
    }

    return Future(() => null);
  }

  Future<List<User>> getUserByUserName(String userName) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName.toLowerCase())
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  Future<List<User>> getUserByEmail(String email) async {
    var querySnapshot =
        await collection.where('email', isEqualTo: email.toLowerCase()).get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  @override
  Future<List<User>> getAll() async {
    var querySnapshot = await collection
        .where(
          'tenant',
          isEqualTo: tenant,
        )
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  @override
  Future<User> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return User.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, bool>> post(User value) async {
    if (value.userName.isNotEmpty) {
      var result = await getUserByUserName(value.userName);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 1,
              message: 'Username is already being used',
            ),
          );
        }
      }
    }

    if (value.email.isNotEmpty) {
      var result = await getUserByEmail(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 2,
              message: 'Email is already being used',
            ),
          );
        }
      }
    }

    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email.toLowerCase(),
      'phoneNumber': value.phoneNumber,
      'address': value.address,
      'address2': value.address2,
      'city': value.city,
      'state': value.state,
      'zipCode': value.zipCode,
      'department': value.department,
      'position': value.position,
      'hourlyRate': value.hourlyRate,
      'password': value.password,
      'userName': value.userName.toLowerCase(),
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
      'userType': value.userType,
    };

    await collection.add(user);

    return right(true);
  }

  @override
  Future<Either<ErrorFields, bool>> put(User value) async {
    if (value.userName.isNotEmpty) {
      var result = await getUserByUserName(value.userName);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 1,
              message: 'Username is already being used',
            ),
          );
        }
      }
    }

    if (value.email.isNotEmpty) {
      var result = await getUserByEmail(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 2,
              message: 'Email is already being used',
            ),
          );
        }
      }
    }

    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email.toLowerCase(),
      'phoneNumber': value.phoneNumber,
      'address': value.address,
      'address2': value.address2,
      'city': value.city,
      'state': value.state,
      'zipCode': value.zipCode,
      'department': value.department,
      'position': value.position,
      'hourlyRate': value.hourlyRate,
      'password': value.password,
      'userName': value.userName.toLowerCase(),
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
      'userType': value.userType,
    };

    await collection.doc(value.id.toString()).update(user);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }
}
