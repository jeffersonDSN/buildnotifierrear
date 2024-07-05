part of 'attachment_bloc.dart';

@freezed
class AttachmentEvent with _$AttachmentEvent {
  const factory AttachmentEvent.load({
    required String folderId,
  }) = AttachmentEventLoad;

  const factory AttachmentEvent.goBack() = AttachmentEventGoBack;

  const factory AttachmentEvent.changeFileItemName({
    required String id,
    required String name,
  }) = AttachmentEventChangeFileItemName;

  const factory AttachmentEvent.download({
    required String id,
  }) = AttachmentEventDownload;

  const factory AttachmentEvent.addFile({
    required FileItem fileItem,
    Uint8List? data,
  }) = AttachmentEventAddFile;

  const factory AttachmentEvent.deleteFileItem({
    required FileItem fileItem,
  }) = AttachmentEventDeleteFileItem;
}
