import 'package:buildnotifierrear/domain/entities/state/state.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_states_repository.dart';
import 'package:buildnotifierrear/infrastructure/firestore/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StatesFirestoreRepository extends FireStoreRepository
    implements AbsIStatesRepository {
  StatesFirestoreRepository() : super(collectionName: 'states');

  @override
  Future<List<State>> getAll() async {
    var querySnapshot = await collection.orderBy('name').get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => State.fromJson(e))
        .toList();
  }
}
