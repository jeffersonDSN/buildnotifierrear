import 'dart:async';
import 'dart:html';
import 'dart:typed_data';
import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:buildnotifierrear/domain/entities/file_item/file_item.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/attachment/overview/bloc/attachment_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;

class AttachmentView extends IView {
  final String folderId;

  const AttachmentView({
    super.key,
    required this.folderId,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController horizontalController = ScrollController();

    FileItem? selectedItem;

    var bloc = BlocProvider.of<AttachmentBloc>(context);

    bloc.add(
      AttachmentEvent.load(
        folderId: folderId,
      ),
    );

    addAttachment() async {
      FileUploadInputElement uploadInput = FileUploadInputElement();
      uploadInput.accept = 'pdf, jpg, jpeg, png, gif, txt, pptx';
      uploadInput.multiple = false;
      uploadInput.click();

      uploadInput.onChange.listen((e) {
        final files = uploadInput.files;
        if (files != null && files.isNotEmpty) {
          final file = files[0];
          FileReader reader = FileReader();

          Uint8List? uploadedImage;

          reader.onLoadEnd.listen((e) {
            uploadedImage = reader.result as Uint8List?;

            bloc.add(
              AttachmentEvent.addFile(
                fileItem: FileItem(
                  name: file.name,
                  folderId: bloc.state.asLoaded.folderId,
                  fileExtension:
                      path.extension(file.name).toLowerCase().fileExtension,
                ),
                data: uploadedImage,
              ),
            );
          });

          reader.readAsArrayBuffer(file);
        }
      });
    }

    Future<void> openItemMenu(Offset position, Size size) async {
      var temp = selectedItem!.copyWith();

      await showMenu(
        context: context,
        position: RelativeRect.fromSize(
          position & const Size(48.0, 48.0),
          size,
        ),
        items: [
          PopupMenuItem(
            child: const Text('Delete'),
            onTap: () {
              bloc.add(
                AttachmentEvent.deleteFileItem(fileItem: temp),
              );
            },
          ),
          PopupMenuItem(
            child: const Text('Rename'),
            onTap: () async {
              var name = await showDialog<String?>(
                    context: context,
                    builder: (BuildContext context) {
                      TextEditingController textEditingController =
                          TextEditingController(
                        text: temp.name,
                      );

                      return AlertDialog(
                        title: Text(
                          temp.fileExtension.isFolder
                              ? 'Folder name '
                              : 'File name',
                        ),
                        content: TextFormField(
                          controller: textEditingController,
                        ),
                        actions: <Widget>[
                          FilledButton.icon(
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColor.warning,
                              ),
                            ),
                            icon: const Icon(Icons.close),
                            label: Text(context.tr.cancel),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FilledButton.icon(
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColor.success,
                              ),
                            ),
                            icon: const Icon(
                              Icons.check,
                            ),
                            label: Text(context.tr.save),
                            onPressed: () {
                              Navigator.pop(
                                context,
                                textEditingController.text,
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ) ??
                  '';

              if (name.isNotEmpty) {
                bloc.add(
                  AttachmentEvent.changeFileItemName(
                    id: temp.id,
                    name: name,
                  ),
                );
              }
            },
          )
        ],
      );
    }

    Future<void> openMenu(Offset position, Size size) async {
      await showMenu(
        context: context,
        position: RelativeRect.fromSize(
          position & const Size(48.0, 48.0),
          size,
        ),
        items: [
          PopupMenuItem(
            child: const Text('New folder'),
            onTap: () async {
              var folderNamde = await showDialog<String?>(
                    context: context,
                    builder: (BuildContext context) {
                      TextEditingController textEditingController =
                          TextEditingController(text: 'New Folder');

                      return AlertDialog(
                        title: const Text('Folder name '),
                        content: TextFormField(
                          controller: textEditingController,
                        ),
                        actions: <Widget>[
                          FilledButton.icon(
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColor.warning,
                              ),
                            ),
                            icon: const Icon(Icons.close),
                            label: Text(context.tr.cancel),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FilledButton.icon(
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                AppColor.success,
                              ),
                            ),
                            icon: const Icon(
                              Icons.check,
                            ),
                            label: Text(context.tr.save),
                            onPressed: () {
                              Navigator.pop(
                                context,
                                textEditingController.text,
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ) ??
                  '';

              if (folderNamde.isNotEmpty) {
                bloc.add(
                  AttachmentEvent.addFile(
                    fileItem: FileItem(
                      name: folderNamde,
                      fileExtension: FileExtensionEnums.folder,
                      folderId: bloc.state.asLoaded.folderId,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      );
    }

    void readFile(FileItem item) async {
      item.fileExtension.maybeWhen(
        folder: () {
          bloc.add(
            AttachmentEvent.load(
              folderId: item.id,
            ),
          );
        },
        orElse: () {
          appBloc(context).add(
            AppEvent.changeView(
              mod: Mod.attachment(
                fileItemId: item,
              ),
            ),
          );
        },
      );
    }

    return BlocBuilder<AttachmentBloc, AttachmentState>(
      bloc: bloc,
      builder: (context, state) {
        selectedItem = null;

        return Container(
          color: AppColor.lightColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Sizes.size64,
                color: AppColor.lightColor,
                child: Row(
                  children: [
                    if (bloc.stateHistoryLength > 0)
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_left),
                        onPressed: () {
                          bloc.add(
                            const AttachmentEvent.goBack(),
                          );
                        },
                      ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.size8),
                            child: FilledButton.icon(
                              icon: const Icon(Icons.add),
                              label: Text(context.tr.addAttachment),
                              onPressed: () {
                                addAttachment();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (folderId, filesItem) {
                  return Expanded(
                    child: Listener(
                      onPointerDown: (event) async {
                        if (event.kind == PointerDeviceKind.mouse &&
                            event.buttons == kSecondaryMouseButton) {
                          RenderBox overlay = Overlay.of(context)
                              .context
                              .findRenderObject() as RenderBox;

                          Future.delayed(const Duration(milliseconds: 50),
                              () async {
                            if (selectedItem != null) {
                              await openItemMenu(event.position, overlay.size);
                            } else {
                              await openMenu(event.position, overlay.size);
                            }

                            selectedItem = null;
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: LayoutBuilder(
                          builder: (chartContext, constraints) {
                            double maxWidth = constraints.maxWidth;
                            double itemWidth = Sizes.size112;
                            double itemHeight = Sizes.size112;
                            double x = 0;
                            double y = 0;

                            return SingleChildScrollView(
                              controller: horizontalController,
                              scrollDirection: Axis.horizontal,
                              physics: const ClampingScrollPhysics(),
                              child: SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight,
                                child: Stack(
                                  children: filesItem.map((item) {
                                    if (x + itemWidth > maxWidth) {
                                      x = 0;
                                      y += itemHeight;
                                    }

                                    Widget positionedItem = Positioned(
                                      left: x,
                                      top: y,
                                      child: Listener(
                                        onPointerDown: (event) {
                                          selectedItem = item;
                                        },
                                        child: GestureDetector(
                                          onTap: () {
                                            readFile(item);
                                          },
                                          child: Column(
                                            children: [
                                              Icon(
                                                item.fileExtension.icon,
                                                color: item.fileExtension.color,
                                                size: Sizes.size48,
                                              ),
                                              Text(item.name),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );

                                    x += itemWidth;
                                    return positionedItem;
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),

              // if (selectedFile != null)
              //   Expanded(
              //     child: PdfPreview(
              //       build: (format) => selectedFile!.file!.readAsBytes(),
              //     ),
              //   )
            ],
          ),
        );
      },
    );
  }
}
