import 'dart:convert';
import 'dart:typed_data';

import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/attachment/file/bloc/attachment_file_view_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';

class AttachmentFileView extends IView {
  final FileItem fileItem;

  const AttachmentFileView({
    super.key,
    required this.fileItem,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AttachmentFileViewBloc>(context);

    bloc.add(
      AttachmentFileViewEvent.load(fileItem: fileItem),
    );

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_left),
                onPressed: () {
                  appBloc(context).add(const AppEvent.goBack());
                },
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: BlocBuilder<AttachmentFileViewBloc, AttachmentFileViewState>(
              bloc: bloc,
              builder: (context, state) {
                return state.when(
                  init: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: (fileItem) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (fileItem, data) {
                    return fileItem.fileExtension.maybeWhen(
                      pdf: () {
                        return PdfPreview(
                          build: (format) => data!,
                        );
                      },
                      txt: () {
                        var text = utf8.decode(Uint8List.sublistView(data!));

                        return Expanded(
                          child: Center(
                            child: SingleChildScrollView(
                              child: Text(text),
                            ),
                          ),
                        );
                      },
                      orElse: () {
                        return Center(
                          child: Image.memory(data!),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
