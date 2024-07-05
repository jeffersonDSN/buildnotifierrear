import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:buildnotifierrear/infrastructure/firestore/attachment_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/attachment/file/bloc/attachment_file_view_bloc.dart';
import 'package:buildnotifierrear/presentation/attachment/file/view/attachment_file_view.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttachmentFile extends IView {
  final FileItem fileItem;

  const AttachmentFile({
    super.key,
    required this.fileItem,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<AttachmentFileViewBloc>(
      create: (context) => AttachmentFileViewBloc(
        controller: AttachmentController(
          repository: AttachmentFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: AttachmentFileView(
        fileItem: fileItem,
      ),
    );
  }
}
