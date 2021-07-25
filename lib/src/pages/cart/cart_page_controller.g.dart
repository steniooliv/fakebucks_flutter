// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartPageController on _CartPageControllerBase, Store {
  final _$cartListAtom = Atom(name: '_CartPageControllerBase.cartList');

  @override
  ObservableList<CartModel> get cartList {
    _$cartListAtom.reportRead();
    return super.cartList;
  }

  @override
  set cartList(ObservableList<CartModel> value) {
    _$cartListAtom.reportWrite(value, super.cartList, () {
      super.cartList = value;
    });
  }

  final _$listLenghtAtom = Atom(name: '_CartPageControllerBase.listLenght');

  @override
  String get listLenght {
    _$listLenghtAtom.reportRead();
    return super.listLenght;
  }

  @override
  set listLenght(String value) {
    _$listLenghtAtom.reportWrite(value, super.listLenght, () {
      super.listLenght = value;
    });
  }

  final _$totalCartValueAtom =
      Atom(name: '_CartPageControllerBase.totalCartValue');

  @override
  String get totalCartValue {
    _$totalCartValueAtom.reportRead();
    return super.totalCartValue;
  }

  @override
  set totalCartValue(String value) {
    _$totalCartValueAtom.reportWrite(value, super.totalCartValue, () {
      super.totalCartValue = value;
    });
  }

  final _$_CartPageControllerBaseActionController =
      ActionController(name: '_CartPageControllerBase');

  @override
  void addItem(ProductModel product) {
    final _$actionInfo = _$_CartPageControllerBaseActionController.startAction(
        name: '_CartPageControllerBase.addItem');
    try {
      return super.addItem(product);
    } finally {
      _$_CartPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(ProductModel product) {
    final _$actionInfo = _$_CartPageControllerBaseActionController.startAction(
        name: '_CartPageControllerBase.removeItem');
    try {
      return super.removeItem(product);
    } finally {
      _$_CartPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAll(ProductModel product) {
    final _$actionInfo = _$_CartPageControllerBaseActionController.startAction(
        name: '_CartPageControllerBase.removeAll');
    try {
      return super.removeAll(product);
    } finally {
      _$_CartPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void attListSize() {
    final _$actionInfo = _$_CartPageControllerBaseActionController.startAction(
        name: '_CartPageControllerBase.attListSize');
    try {
      return super.attListSize();
    } finally {
      _$_CartPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartList: ${cartList},
listLenght: ${listLenght},
totalCartValue: ${totalCartValue}
    ''';
  }
}
