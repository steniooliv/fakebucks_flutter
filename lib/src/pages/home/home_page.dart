import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';
import 'package:fakebucks_flutter/src/pages/cart/cart_page.dart';
import 'package:fakebucks_flutter/src/pages/cart/cart_page_controller.dart';
import 'package:fakebucks_flutter/src/pages/home/home_page_controller.dart';
import 'package:fakebucks_flutter/src/pages/home/widget/card_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = HomePageController();
  CartPageController cartController = CartPageController();

  @override
  void initState() {
    controller.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
              Flexible(
                child: Text(
                  'coffees',
                  style: TextStyles.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  CartPage(controller: cartController)));
                    },
                    icon: Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 45,
                          color: AppColors.blueText,
                        ),
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: Container(
                            color: AppColors.transparent,
                            child: Observer(
                              builder: (_) {
                                return Text(
                                  cartController.listLenght,
                                  style: TextStyles.cardText,
                                  textAlign: TextAlign.center,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(gradient: AppColors.linearGradient),
        child: Observer(
          builder: (_) {
            if (controller.appStatus == AppStatus.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (controller.appStatus == AppStatus.success) {
              return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) => CardHomeWidget(
                  imageName: controller.products[index].image,
                  textTitle: controller.products[index].name,
                  textCard: controller.products[index].description,
                  value: controller.products[index].value.toStringAsFixed(2),
                  onTap: () {
                    cartController.addItem(controller.products[index]);
                  },
                ),
              );
            } else if (controller.appStatus == AppStatus.empty) {
              return EmptyState();
            } else if (controller.appStatus == AppStatus.error) {
              return Center(
                child: Text(
                  "Houve um problema",
                  style: TextStyles.cardTitle,
                ),
              );
            }
            return EmptyState();
          },
        ),
      ),
    );
  }
}

class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Produtos indisponíveis no momento!",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
