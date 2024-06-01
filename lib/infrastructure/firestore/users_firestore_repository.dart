import 'package:buildnotifierrear/domain/entities/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UsersFireStoreRepository extends FireStoreRepository
    implements AbsICRUDRepository<User> {
  UsersFireStoreRepository() : super(collectionName: 'users');

  @override
  Future<List<User>> getAll() async {
    var querySnapshot = await collection.get();

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
