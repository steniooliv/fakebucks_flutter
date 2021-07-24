import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';
import 'package:fakebucks_flutter/src/pages/cart/widget/card_cart_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            AppBar(
              automaticallyImplyLeading: true,
              elevation: 0,
              backgroundColor: AppColors.white,
              centerTitle: true,
              title: Text(
                'cart',
                style: TextStyles.title,
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.blueText,
                    size: 40,
                  )),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(gradient: AppColors.linearGradient),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CardCartWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                quantity: '2',
                value: '6.90',
              )
            ],
          ),
        ),
      ),
    );
  }
}
