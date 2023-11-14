import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_shopping_app/app/getit/locator.dart';

import '../viewmodel/cart_item_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = locator.get<CartViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
      ),
      body: Observer(builder: (context) {
        return ListView.builder(
          itemCount: viewModel.products.length,
          itemBuilder: (context, index) {
            final item = viewModel.products[index];
            return Card(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.5, child: Text(item.title)),
                    Observer(builder: (context) {
                      return Text(viewModel.cartList.where((element) => element == item).length.toString());
                    }),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            viewModel.dincremenCart(item);
                          },
                          icon: const Icon(Icons.remove),
                        ),
                        IconButton(
                          onPressed: () {
                            viewModel.incrementCart(item);
                            print(viewModel.cartList.where((element) => element == item).length.toString());
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    )
                  ],
                ),
                subtitle: Text('Price: ${item.price.toString()}'),
                leading: Image.network(
                  item.image,
                  width: MediaQuery.sizeOf(context).width * 0.1,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
