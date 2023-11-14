import 'package:get_it/get_it.dart';
import 'package:mobx_shopping_app/app/viewmodel/cart_item_viewmodel.dart';

var locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CartViewModel());
}
