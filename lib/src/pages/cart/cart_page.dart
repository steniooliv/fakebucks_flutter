import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';
import 'package:fakebucks_flutter/src/pages/cart/cart_page_controller.dart';
import 'package:fakebucks_flutter/src/pages/cart/widget/card_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CartPage extends StatefulWidget {
  final CartPageController controller;

  CartPage({Key? key, required this.controller}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              Flexible(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: AppColors.blueText,
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  'cart',
                  style: TextStyles.title,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(gradient: AppColors.linearGradient),
        child: widget.controller.cartList.isEmpty
            ? Center(
                child: Text(
                  'Your shopping cart is empty!',
                  style: TextStyles.cardText,
                ),
              )
            : Observer(builder: (_) {
                return ListView.builder(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 10),
                  itemCount: widget.controller.cartList.length,
                  itemBuilder: (context, index) => CardCartWidget(
                    textTitle: widget.controller.cartList[index].product.name,
                    imageName: widget.controller.cartList[index].product.image,
                    value: widget.controller.cartList[index].totalValue,
                    quantity:
                        widget.controller.cartList[index].quantity.toString(),
                    addItem: () => widget.controller
                        .addItem(widget.controller.cartList[index].product),
                    removeItem: () => widget.controller
                        .removeItem(widget.controller.cartList[index].product),
                    removeAll: () => widget.controller
                        .removeAll(widget.controller.cartList[index].product),
                  ),
                );
              }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 6,
              offset: Offset(0, 2),
              color: AppColors.black,
            ),
          ],
        ),
        width: double.maxFinite,
        height: 60,
        child: Material(
          color: AppColors.white,
          child: InkWell(
            onTap: () {
              widget.controller.cartList.isNotEmpty
                  ? showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sorry'),
                          content:
                              Text('At this moment all our stores are closed'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'))
                          ],
                        );
                      })
                  : showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Ops!'),
                          content: Text('Your shopping cart is empty!'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'))
                          ],
                        );
                      });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'checkout',
                  style: TextStyles.checkout,
                ),
                Observer(
                  builder: (_) {
                    return Text(
                      '\$ ${widget.controller.totalCartValue}',
                      style: TextStyles.checkoutValue,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
