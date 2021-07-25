import 'dart:convert';

class ProductModel {
  int id;
  String name;
  String description;
  double value;
  String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.value,
    required this.image,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    double? value,
    String? image,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      value: value ?? this.value,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'value': value,
      'image': image,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      value: map['value'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, value: $value, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.value == value &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        value.hashCode ^
        image.hashCode;
  }
}
