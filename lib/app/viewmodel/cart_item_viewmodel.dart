import 'package:mobx/mobx.dart';
import 'package:mobx_shopping_app/app/data/Models/cart_item_model.dart';
import 'package:mobx_shopping_app/app/data/service/shopping_service.dart';
part 'cart_item_viewmodel.g.dart';

class CartViewModel = _CartViewModelBase with _$CartViewModel;

abstract class _CartViewModelBase with Store {
  final ProductService productService = ProductService();

  _CartViewModelBase() {
    getProducts();
  }

  @action
  Future<void> getProducts() async {
    var list = await productService.getProducts();
    products.addAll(list);
  }

  @observable
  ObservableList<Product> products = ObservableList<Product>();

  @observable
  ObservableList<Product> cartList = ObservableList<Product>();

  @action
  void incrementCart(Product product) {
    cartList.add(product);
  }

  @action
  void dincremenCart(Product product) {
    cartList.remove(product);
  }

}
