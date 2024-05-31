import 'package:flutter_image_search_clean_architecture_1/data/dto/photo_result_dto.dart';
import 'package:flutter_image_search_clean_architecture_1/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id?.toInt() ?? -1,
      tags: tags ?? 'Not Found tags',
      largeImageURL: largeImageURL ?? 'Not Found Image URL',
      views: views?.toInt() ?? -1,
    );
  }
}
