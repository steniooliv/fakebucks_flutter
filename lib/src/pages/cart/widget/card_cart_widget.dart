import 'package:flutter/material.dart';

import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';

class CardCartWidget extends StatefulWidget {
  String imageName;
  String textTitle;
  String quantity;
  String value;

  CardCartWidget({
    Key? key,
    required this.imageName,
    required this.textTitle,
    required this.quantity,
    required this.value,
  }) : super(key: key);

  @override
  _CardCartWidgetState createState() => _CardCartWidgetState();
}

class _CardCartWidgetState extends State<CardCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.linearCard,
            border: Border(
              top: BorderSide(color: AppColors.white),
              bottom: BorderSide(color: AppColors.white),
            ),
          ),
          width: double.maxFinite,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Container(
                  child: Image.asset(
                    "assets/images/${widget.imageName}.png",
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${widget.textTitle}',
                            style: TextStyles.cardTitle,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: Text(
                                'Quantity',
                                style: TextStyles.cardText,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_circle,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Text(
                            '${widget.quantity}',
                            style: TextStyles.cardText,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_shopping_cart,
                        size: 40,
                      ),
                      color: AppColors.white,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '\$ ${widget.value}',
                      style: TextStyles.cardValue,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
