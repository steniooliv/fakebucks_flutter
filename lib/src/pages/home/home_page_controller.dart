import 'package:fakebucks_flutter/shared/models/product_model.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

enum AppStatus { success, loading, error, empty }

abstract class _HomePageControllerBase with Store {
  String errorMessage = '';

  @observable
  AppStatus appStatus = AppStatus.empty;

  List<ProductModel> products = <ProductModel>[];

  @action
  Future<void> getProducts() async {
    try {
      appStatus = AppStatus.loading;
      products = await Future.delayed(Duration(seconds: 2))
          .then((value) => <ProductModel>[
                ProductModel(
                    id: 1,
                    name: "Blonde Roast",
                    description:
                        "Lightly roasted coffee that's soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut.",
                    value: 4.90,
                    image: "blonde_roast"),
                ProductModel(
                    id: 2,
                    name: "Caffè Americano",
                    description:
                        "Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance. Pro Tip: For an additional boost, ask your barista to try this with an extra shot.",
                    value: 4.60,
                    image: "caffe_americano"),
                ProductModel(
                    id: 3,
                    name: "Caffè Latte",
                    description:
                        "Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk-forward warm-up.",
                    value: 5.90,
                    image: "caffe_latte"),
                ProductModel(
                    id: 4,
                    name: "Caffè Misto",
                    description:
                        "A one-to-one combination of fresh-brewed coffee and steamed milk add up to one distinctly delicious coffee drink remarkably mixed.",
                    value: 5.90,
                    image: "caffe_misto"),
                ProductModel(
                    id: 5,
                    name: "Caffè Mocha",
                    description:
                        "Our rich, full-bodied espresso combined with bittersweet mocha sauce and steamed milk, then topped with sweetened whipped cream. The classic coffee drink that always sweetly satisfies.",
                    value: 6.90,
                    image: "caffe_mocha"),
                ProductModel(
                    id: 6,
                    name: "Cappuccino",
                    description:
                        "Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.",
                    value: 7.90,
                    image: "cappuccino"),
                ProductModel(
                    id: 7,
                    name: "Caramel Macchiato",
                    description:
                        "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                    value: 8.90,
                    image: "caramel_macchiato"),
                ProductModel(
                    id: 8,
                    name: "Cinnamon Dolce Latte",
                    description:
                        "We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon dolce topping to bring you specialness in a treat.",
                    value: 9.90,
                    image: "cinnamon_dolce_latte"),
                ProductModel(
                    id: 9,
                    name: "Espresso",
                    description:
                        "Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.",
                    value: 3.90,
                    image: "espresso"),
                ProductModel(
                    id: 10,
                    name: "Espresso Con Panna",
                    description:
                        "Espresso meets a dollop of whipped cream to enhance the rich and caramelly flavors of a straight-up shot.",
                    value: 4.90,
                    image: "espresso_con_panna"),
                ProductModel(
                    id: 11,
                    name: "Espresso Macchiato",
                    description:
                        "Our rich espresso marked with dollop of steamed milk and foam. A European-style classic.",
                    value: 4.90,
                    image: "espresso_macchiato"),
                ProductModel(
                    id: 12,
                    name: "Flat White",
                    description:
                        "Smooth ristretto shots of espresso get the perfect amount of steamed whole milk to create a not-too-strong, not-too-creamy, just-right flavor.",
                    value: 8.90,
                    image: "flat_white"),
              ]);
      appStatus = products.isNotEmpty ? AppStatus.success : AppStatus.empty;
    } on PlatformException catch (e) {
      errorMessage = e.message.toString();
      appStatus = AppStatus.error;
    } catch (e) {
      errorMessage = e.toString();
      appStatus = AppStatus.error;
      appStatus.message();
    }
  }
}

extension stateMessage on AppStatus {
  String message() {
    if (this == AppStatus.error) {
      return "Ops! Algo deu errado";
    }

    return "";
  }
}
