import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:fakebucks_flutter/shared/theme/text_styles.dart';
import 'package:fakebucks_flutter/src/pages/home/widget/card_home_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              elevation: 0,
              backgroundColor: AppColors.white,
              centerTitle: true,
              title: Text(
                'coffees',
                style: TextStyles.title,
              ),
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
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
              CardHomeWidget(
                imageName: 'caffè_misto',
                textTitle: 'Caffè Misto',
                textCard:
                    'dlfjalsdjfadslkj alsçdjasdfasdfasdfadsfdsaf ladskjf ladsçj flaç',
                value: '6.90',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
