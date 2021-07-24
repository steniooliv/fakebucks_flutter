import 'package:flutter/material.dart';

import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';

class CardHomeWidget extends StatefulWidget {
  String imageName;
  String textTitle;
  String textCard;
  String value;

  CardHomeWidget({
    Key? key,
    required this.imageName,
    required this.textTitle,
    required this.textCard,
    required this.value,
  }) : super(key: key);

  @override
  _CardHomeWidgetState createState() => _CardHomeWidgetState();
}

class _CardHomeWidgetState extends State<CardHomeWidget> {
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
                    children: [
                      Row(
                        children: [
                          Text(
                            '${widget.textTitle}',
                            style: TextStyles.cardTitle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${widget.textCard}',
                              style: TextStyles.cardText,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      icon: Icon(
                        Icons.shopping_cart,
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
