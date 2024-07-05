part of 'attachment_bloc.dart';

@freezed
class AttachmentState with _$AttachmentState {
  const factory AttachmentState.init() = AttachmentStateInit;

  const factory AttachmentState.loading({
    required String folderId,
  }) = AttachmentStateLoading;

  const factory AttachmentState.loaded({
    required String folderId,
    required List<FileItem> filesItem,
  }) = AttachmentStateLoaded;
}

extension OnAttachmentState on AttachmentState {
  bool get isLoading => this is AttachmentStateLoading;
  bool get isLoaded => this is AttachmentStateLoaded;

  AttachmentStateLoading get asLoading => this as AttachmentStateLoading;
  AttachmentStateLoaded get asLoaded => this as AttachmentStateLoaded;
}
