import 'package:buildnotifierrear/domain/core/types_defs.dart';
import 'package:buildnotifierrear/domain/entities/employee/employee.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_employees_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class EmployeesFireStoreRepository extends FireStoreRepository
    implements AbsIEmployeesRepository {
  final String tenant;

  EmployeesFireStoreRepository({required this.tenant})
      : super(collectionName: 'users');

  @override
  Future<Employee?> getEmployeeByUserNamePassword(
      String userName, String password) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName.toLowerCase())
        .where('password', isEqualTo: password)
        .where('userType', isEqualTo: 1)
        .get();

    var doc = querySnapshot.docs.firstOrNull;
    if (doc != null) {
      var data = doc.data() as Map<String, dynamic>;

      return Employee.fromJson({...data, 'id': doc.reference.id});
    }

    return Future(() => null);
  }

  Future<List<Employee>> getUserByUserName(String userName) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName.toLowerCase())
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => Employee.fromJson(e))
        .toList();
  }

  Future<List<Employee>> getEmployeeByEmail(String email) async {
    var querySnapshot =
        await collection.where('email', isEqualTo: email.toLowerCase()).get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => Employee.fromJson(e))
        .toList();
  }

  @override
  Future<List<Employee>> getAll() async {
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
        .map((e) => Employee.fromJson(e))
        .toList();
  }

  @override
  Future<List<Employee>> getEmployeesByID(List<String> ids) async {
    List<Future<DocumentSnapshot>> futures = ids.map((id) {
      return collection.doc(id).get();
    }).toList();

    var querySnapshot = await Future.wait(futures);

    return querySnapshot.map((snapshot) {
      var doc = snapshot.data() as Map<String, dynamic>;
      return Employee.fromJson({...doc, 'id': snapshot.id});
    }).toList();
  }

  @override
  Future<Employee> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return Employee.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, bool>> post(Employee value) async {
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
      var result = await getEmployeeByEmail(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty ||
            result.any((employee) => employee.id != value.id)) {
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
      'middleName': value.middleName,
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
  Future<Either<ErrorFields, bool>> put(Employee value) async {
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
      var result = await getEmployeeByEmail(value.email);

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
      'middleName': value.middleName,
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
