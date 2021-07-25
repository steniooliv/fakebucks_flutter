import 'package:fakebucks_flutter/shared/models/cart_model.dart';
import 'package:fakebucks_flutter/shared/models/product_model.dart';
import 'package:mobx/mobx.dart';
part 'cart_page_controller.g.dart';

class CartPageController = _CartPageControllerBase with _$CartPageController;

abstract class _CartPageControllerBase with Store {
  @observable
  ObservableList<CartModel> cartList = ObservableList.of(<CartModel>[]);

  @observable
  String listLenght = '0';

  @observable
  String totalCartValue = '0.00';

  @action
  void addItem(ProductModel product) {
    if (cartList.any((element) => element.product == product)) {
      final _index =
          cartList.indexWhere((element) => element.product == product);
      final _cartItem = cartList[_index];
      cartList[_index] = _cartItem.copyWith(quantity: _cartItem.quantity + 1);
    } else {
      cartList.add(CartModel(product: product, quantity: 1));
    }
    attListSize();
  }

  @action
  void removeItem(ProductModel product) {
    if (cartList.any((element) => element.product == product)) {
      final _index =
          cartList.indexWhere((element) => element.product == product);
      if (cartList[_index].quantity > 1) {
        final _cartItem = cartList[_index];
        cartList[_index] = _cartItem.copyWith(quantity: _cartItem.quantity - 1);
      } else {
        cartList.removeAt(_index);
      }
    }
    attListSize();
  }

  @action
  void removeAll(ProductModel product) {
    if (cartList.any((element) => element.product == product)) {
      final _index =
          cartList.indexWhere((element) => element.product == product);
      for (var i = 0; i <= cartList[_index].quantity; i++) {
        final _cartItem = cartList[_index];
        cartList[_index] = _cartItem.copyWith(quantity: _cartItem.quantity - 1);
      }
      cartList.removeAt(_index);
    }

    attListSize();
  }

  @action
  void attListSize() {
    double _cartValue = 0.0;
    int _listSize = 0;

    cartList.forEach((element) {
      _listSize += element.quantity;
      _cartValue += element.quantity * element.product.value;
    });

    listLenght = _listSize.toString();
    totalCartValue = _cartValue.toStringAsFixed(2);
  }
}
