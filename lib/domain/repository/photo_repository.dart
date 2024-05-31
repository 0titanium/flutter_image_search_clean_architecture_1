import 'package:flutter_image_search_clean_architecture_1/domain/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(String query);
}
