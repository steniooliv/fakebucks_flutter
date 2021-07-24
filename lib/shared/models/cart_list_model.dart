import 'dart:convert';

class CartList {
  int id;
  String image;
  String name;
  int quantity;
  double value;

  CartList({
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.value,
  });

  CartList copyWith({
    int? id,
    String? image,
    String? name,
    int? quantity,
    double? value,
  }) {
    return CartList(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'quantity': quantity,
      'value': value,
    };
  }

  factory CartList.fromMap(Map<String, dynamic> map) {
    return CartList(
      id: map['id'],
      image: map['image'],
      name: map['name'],
      quantity: map['quantity'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CartList.fromJson(String source) =>
      CartList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartList(id: $id, image: $image, name: $name, quantity: $quantity, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartList &&
        other.id == id &&
        other.image == image &&
        other.name == name &&
        other.quantity == quantity &&
        other.value == value;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        image.hashCode ^
        name.hashCode ^
        quantity.hashCode ^
        value.hashCode;
  }
}
