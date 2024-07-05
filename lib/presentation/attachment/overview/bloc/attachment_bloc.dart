import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_bloc.freezed.dart';
part 'attachment_event.dart';
part 'attachment_state.dart';

class AttachmentBloc extends Bloc<AttachmentEvent, AttachmentState> {
  final List<AttachmentState> _stateHistory = [];

  int get stateHistoryLength => _stateHistory.length;

  AttachmentBloc({
    required AttachmentController controller,
  }) : super(const AttachmentState.init()) {
    on<AttachmentEvent>((event, emit) async {
      await event.when(
        load: (folderId) async {
          if (state.isLoaded) {
            _stateHistory.add(state);
          }

          emit(
            AttachmentState.loading(
              folderId: folderId,
            ),
          );

          var fileItems = await controller.getByFolder(folderId);

          emit(
            AttachmentState.loaded(
              folderId: folderId,
              filesItem: fileItems,
            ),
          );
        },
        goBack: () {
          if (_stateHistory.isNotEmpty) {
            emit(
              _stateHistory.removeLast(),
            );
          }
        },
        changeFileItemName: (id, name) async {
          emit(
            state.asLoaded.copyWith(
              filesItem: [
                ...state.asLoaded.filesItem.map((item) {
                  if (item.id == id) {
                    return item.copyWith(name: name);
                  }

                  return item;
                })
              ],
            ),
          );

          await controller.changeFileName(id, name);
        },
        download: (id) {},
        addFile: (fileItem, data) async {
          var id = await controller.post(fileItem, data);
          var result = fileItem.copyWith(id: id);

          emit(
            state.asLoaded.copyWith(
              filesItem: [...state.asLoaded.filesItem, result],
            ),
          );
        },
        deleteFileItem: (fileItem) async {
          emit(
            state.asLoaded.copyWith(
              filesItem: [
                ...state.asLoaded.filesItem
                    .where((item) => item.id != fileItem.id)
              ],
            ),
          );

          await controller.delete(fileItem);
        },
      );
    });
  }
}
