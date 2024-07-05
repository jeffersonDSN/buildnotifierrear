part of 'attachment_file_view_bloc.dart';

@freezed
class AttachmentFileViewEvent with _$AttachmentFileViewEvent {
  const factory AttachmentFileViewEvent.load({
    required FileItem fileItem,
  }) = AttachmentFileViewEventLoad;
}
