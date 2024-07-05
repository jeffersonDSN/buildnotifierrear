part of 'attachment_file_view_bloc.dart';

@freezed
class AttachmentFileViewState with _$AttachmentFileViewState {
  const factory AttachmentFileViewState.init() = AttachmentFileViewStateInit;

  const factory AttachmentFileViewState.loading({
    required FileItem fileItem,
  }) = AttachmentFileViewStateLoading;

  const factory AttachmentFileViewState.loaded({
    required FileItem fileItem,
    Uint8List? data,
  }) = AttachmentFileViewStateLoaded;
}
