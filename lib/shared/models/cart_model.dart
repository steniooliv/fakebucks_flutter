import 'dart:convert';

import 'package:fakebucks_flutter/shared/models/product_model.dart';

class CartModel {
  ProductModel product;
  int quantity;

  String get totalValue => (quantity * product.value).toStringAsFixed(2);

  CartModel({
    required this.product,
    required this.quantity,
  });

  CartModel copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return CartModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      product: ProductModel.fromMap(map['product']),
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source));

  @override
  String toString() => 'CartModel(product: $product, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModel &&
        other.product == product &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;
}
