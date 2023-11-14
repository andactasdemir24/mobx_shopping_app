// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartViewModel on _CartViewModelBase, Store {
  late final _$productsAtom =
      Atom(name: '_CartViewModelBase.products', context: context);

  @override
  ObservableList<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$cartListAtom =
      Atom(name: '_CartViewModelBase.cartList', context: context);

  @override
  ObservableList<Product> get cartList {
    _$cartListAtom.reportRead();
    return super.cartList;
  }

  @override
  set cartList(ObservableList<Product> value) {
    _$cartListAtom.reportWrite(value, super.cartList, () {
      super.cartList = value;
    });
  }

  late final _$getProductsAsyncAction =
      AsyncAction('_CartViewModelBase.getProducts', context: context);

  @override
  Future<void> getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  late final _$_CartViewModelBaseActionController =
      ActionController(name: '_CartViewModelBase', context: context);

  @override
  void incrementCart(Product product) {
    final _$actionInfo = _$_CartViewModelBaseActionController.startAction(
        name: '_CartViewModelBase.incrementCart');
    try {
      return super.incrementCart(product);
    } finally {
      _$_CartViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dincremenCart(Product product) {
    final _$actionInfo = _$_CartViewModelBaseActionController.startAction(
        name: '_CartViewModelBase.dincremenCart');
    try {
      return super.dincremenCart(product);
    } finally {
      _$_CartViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products},
cartList: ${cartList}
    ''';
  }
}
