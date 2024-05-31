import 'package:flutter_image_search_clean_architecture_1/data/data_source/photo_api.dart';
import 'package:flutter_image_search_clean_architecture_1/data/mapper/photo_mapper.dart';
import 'package:flutter_image_search_clean_architecture_1/domain/model/photo.dart';
import 'package:flutter_image_search_clean_architecture_1/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  const PhotoRepositoryImpl({
    required PhotoApi photoApi,
  }) : _photoApi = photoApi;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final photoResultDto = await _photoApi.getPhotoResults(query);

    if (photoResultDto.hits == null) {
      return [];
    }

    return photoResultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
