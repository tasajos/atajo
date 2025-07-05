// lib/src/features/atajos/models/atajo_model.dart
class Atajo {
  final String id;
  final String title;
  final String shortDescription;
  final String longDescription;
  final String imageUrl;
  final String category;
  final double latitude;
  final double longitude;

  Atajo({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.longDescription,
    required this.imageUrl,
    required this.category,
    required this.latitude,
    required this.longitude,
  });
}