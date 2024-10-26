import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String? imageUrl;
  final int quantity;

  AddProductInputEntity({
    required this.quantity,
    this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isFeatured,
    required String code,
  });
}
