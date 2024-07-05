import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class FileExtensionConverter implements JsonConverter<FileExtensionEnums, int> {
  const FileExtensionConverter();

  @override
  FileExtensionEnums fromJson(int value) {
    switch (value) {
      case 0:
        return FileExtensionEnums.folder;
      case 1:
        return FileExtensionEnums.pdf;
      case 2:
        return FileExtensionEnums.jpg;
      case 3:
        return FileExtensionEnums.jpeg;
      case 4:
        return FileExtensionEnums.png;
      case 5:
        return FileExtensionEnums.gif;
      case 6:
        return FileExtensionEnums.txt;
      default:
        return FileExtensionEnums.folder;
    }
  }

  @override
  int toJson(FileExtensionEnums value) {
    switch (value) {
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
}
