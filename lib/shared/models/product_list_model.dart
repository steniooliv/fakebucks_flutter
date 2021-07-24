import 'dart:convert';

class ProductList {
  int id;
  String name;
  String description;
  double value;
  String image;

  ProductList({
    required this.id,
    required this.name,
    required this.description,
    required this.value,
    required this.image,
  });

  ProductList copyWith({
    int? id,
    String? name,
    String? description,
    double? value,
    String? image,
  }) {
    return ProductList(
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

  factory ProductList.fromMap(Map<String, dynamic> map) {
    return ProductList(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      value: map['value'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductList.fromJson(String source) =>
      ProductList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductList(id: $id, name: $name, description: $description, value: $value, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductList &&
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
