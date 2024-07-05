import 'dart:typed_data';

import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'attachment_file_view_bloc.freezed.dart';
part 'attachment_file_view_event.dart';
part 'attachment_file_view_state.dart';

class AttachmentFileViewBloc
    extends Bloc<AttachmentFileViewEvent, AttachmentFileViewState> {
  AttachmentFileViewBloc({
    required AttachmentController controller,
  }) : super(const AttachmentFileViewState.init()) {
    on<AttachmentFileViewEvent>((event, emit) async {
      await event.when(
        load: (fileItem) async {
          // emit(
          //   AttachmentFileViewState.loading(fileItem: fileItem),
          // );

          var data = await controller.getFileData(fileItem.id);

          emit(
            AttachmentFileViewState.loaded(
              fileItem: fileItem,
              data: data,
            ),
          );
        },
      );
    });
  }
}
