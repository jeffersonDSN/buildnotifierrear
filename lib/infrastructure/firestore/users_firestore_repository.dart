import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_users_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UsersFireStoreRepository implements AbsIUsersRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  final String tenant;

  UsersFireStoreRepository({required this.tenant});

  @override
  Future<User?> getUserByUserNamePassword(
      String userName, String password) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName)
        .where('password', isEqualTo: password)
        .get();

    var doc = querySnapshot.docs.firstOrNull;
    if (doc != null) {
      var data = doc.data() as Map<String, dynamic>;

      return User.fromJson({...data, 'id': doc.reference.id});
    }

    return Future(() => null);
  }

  @override
  Future<List<User>> getUserByUserName(String userName) async {
    var querySnapshot =
        await collection.where('userName', isEqualTo: userName).get();

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
  Future<bool> post(User value) async {
    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email,
      'password': value.password,
      'userName': value.userName,
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
      'userType': value.userType,
    };

    await collection.add(user);
    return true;
  }

  @override
  Future<bool> put(User value) async {
    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email,
      'password': value.password,
      'userName': value.userName,
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
      'userType': value.userType,
    };

    await collection.doc(value.id.toString()).update(user);
    return true;
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id.toString()).delete();
    return true;
  }
}
