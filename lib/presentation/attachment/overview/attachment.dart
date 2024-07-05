import 'package:buildnotifierrear/domain/controllers/attachment_controller.dart';
import 'package:buildnotifierrear/infrastructure/firestore/attachment_firestore_repository.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/attachment/overview/bloc/attachment_bloc.dart';
import 'package:buildnotifierrear/presentation/attachment/overview/view/attachment_view.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Attachment extends IView {
  final String folderId;

  const Attachment({
    super.key,
    required this.folderId,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<AttachmentBloc>(
      create: (context) => AttachmentBloc(
        controller: AttachmentController(
          repository: AttachmentFirestoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: AttachmentView(
        folderId: folderId,
      ),
    );
  }
}
