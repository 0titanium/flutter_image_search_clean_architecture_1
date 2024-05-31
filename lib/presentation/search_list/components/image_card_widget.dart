import 'package:flutter/material.dart';
import 'package:flutter_image_search_clean_architecture_1/domain/model/photo.dart';

class ImageCardWidget extends StatelessWidget {
  final Photo photo;

  const ImageCardWidget({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        photo.largeImageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
