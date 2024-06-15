import 'package:buildnotifierrear/domain/entities/settings/settings.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_settings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Settings;

class SettingsFirestoreRepository implements AbsISettingsRepository {
  final String _tenantId;
  final CollectionReference _collection;

  SettingsFirestoreRepository({
    required String tenantId,
  })  : _tenantId = tenantId,
        _collection = FirebaseFirestore.instance.collection('tenant');

  @override
  Future<Settings> get() async {
    var querySnapshot = await _collection.doc(_tenantId).get();

    var doc = querySnapshot.data() as Map<String, dynamic>;
    Map<String, dynamic> profile = doc['profile'];

    var result = profile.map((key, value) {
      if (value is Timestamp) {
        return MapEntry(key, value.toDate().toString());
      } else {
        return MapEntry(key, value);
      }
    });

    return Settings.fromJson({...result, 'id': _tenantId});
  }

  @override
  Future<String> post(Settings value, User createBy) async {
    var settings = {
      'profile': value.toJson(),
      'createBy': createBy.toJson(),
    };

    return (await _collection.add(settings)).id;
  }

  @override
  Future<bool> put(Settings value) async {
    var settings = {
      'profile': value.toJson(),
    };

    await _collection.doc(value.id.toString()).update(settings);
    return true;
  }
}
