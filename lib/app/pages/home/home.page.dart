import 'package:chatway/app/controllers/home.controller.dart';
import 'package:chatway/packages/expandable_card/expandablecard.dart';
import 'package:chatway/packages/expandable_card/expandablecardpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'widgets/app_bar_home.widget.dart';
import 'widgets/listHelp.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Scaffold(
      appBar: AppBarHome(),
      body: Observer(
        builder: (_) {
          return ExpandableCardPage(
            page: Center(
              child: Container(
                height: 250,
                child: SvgPicture.asset(
                  'assets/images/undraw_chatting_2yvo.svg',
                  semanticsLabel: 'Chat Image',
                ),
              ),
            ),
            expandableCard: ExpandableCard(
              header: headerExpandableCard(context),
              hasRoundedCorners: true,
              hasHandle: true,
              minHeight: 120,
              maxHeight: controller.store.value == null
                  ? 120.0 + (1 * 70.0)
                  : controller.store.value.needHelpList.length < 4
                      ? 120.0 +
                          (controller.store.value.needHelpList.length * 65.0)
                      : 120.0 + (4 * 70.0),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListHelp(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget headerExpandableCard(BuildContext context) {
    return Text(
      "Preciso de ajuda",
      style: Theme.of(context).textTheme.body2,
    );
  }
}
