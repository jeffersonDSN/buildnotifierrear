import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

enum FileExtensionEnums {
  folder,
  pdf,
  jpg,
  jpeg,
  png,
  gif,
  txt;
}

extension OnFileExtensionEnums on FileExtensionEnums {
  bool get isFolder => this == FileExtensionEnums.folder;

  int get id {
    switch (this) {
      case FileExtensionEnums.folder:
        return 0;
      case FileExtensionEnums.pdf:
        return 1;
      case FileExtensionEnums.jpg:
        return 2;
      case FileExtensionEnums.jpeg:
        return 3;
      case FileExtensionEnums.png:
        return 4;
      case FileExtensionEnums.gif:
        return 5;
      case FileExtensionEnums.txt:
        return 6;
      default:
        return 0;
    }
  }

  Color get color {
    switch (this) {
      case FileExtensionEnums.folder:
        return AppColor.yellow;
      case FileExtensionEnums.pdf:
        return AppColor.red;
      case FileExtensionEnums.jpg:
        return AppColor.blue;
      case FileExtensionEnums.jpeg:
        return AppColor.blue;
      case FileExtensionEnums.png:
        return AppColor.blue;
      case FileExtensionEnums.gif:
        return AppColor.blue;
      case FileExtensionEnums.txt:
        return AppColor.greyColorSwatch;
      default:
        return AppColor.yellow;
    }
  }

  IconData get icon {
    switch (this) {
      case FileExtensionEnums.folder:
        return Icons.folder;
      case FileExtensionEnums.pdf:
        return Icons.picture_as_pdf;
      case FileExtensionEnums.jpg:
        return Icons.image;
      case FileExtensionEnums.jpeg:
        return Icons.image;
      case FileExtensionEnums.png:
        return Icons.image;
      case FileExtensionEnums.gif:
        return Icons.gif_box_outlined;
      case FileExtensionEnums.txt:
        return Icons.feed_outlined;
      default:
        return Icons.folder;
    }
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folder,
    TResult Function()? pdf,
    TResult Function()? jpg,
    TResult Function()? jpeg,
    TResult Function()? png,
    TResult Function()? gif,
    TResult Function()? txt,
    required TResult Function() orElse,
  }) {
    TResult Function() result;

    switch (this) {
      case FileExtensionEnums.folder:
        result = folder ?? orElse;
        break;
      case FileExtensionEnums.pdf:
        result = pdf ?? orElse;
        break;
      case FileExtensionEnums.jpg:
        result = jpg ?? orElse;
        break;
      case FileExtensionEnums.jpeg:
        result = jpeg ?? orElse;
        break;
      case FileExtensionEnums.png:
        result = png ?? orElse;
        break;
      case FileExtensionEnums.gif:
        result = gif ?? orElse;
        break;
      case FileExtensionEnums.txt:
        result = txt ?? orElse;
        break;
      default:
        result = orElse;
    }

    return result();
  }
}

extension OnString on String {
  FileExtensionEnums get fileExtension {
    switch (this) {
      case '.pdf':
        return FileExtensionEnums.pdf;
      case '.jpg':
        return FileExtensionEnums.jpg;
      case '.jpeg':
        return FileExtensionEnums.jpeg;
      case '.png':
        return FileExtensionEnums.png;
      case '.gif':
        return FileExtensionEnums.gif;
      case '.txt':
        return FileExtensionEnums.txt;
      default:
        return FileExtensionEnums.folder;
    }
  }
}
