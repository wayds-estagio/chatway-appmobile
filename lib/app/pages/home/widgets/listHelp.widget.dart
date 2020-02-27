import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../home.controller.dart';
import 'itemHelp.widget.dart';

class ListHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Observer(
      builder: (_) {
        if (controller.store.value == null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        }

        return Container(
          height: controller.store.value.needHelpList.length < 4
              ? (controller.store.value.needHelpList.length * 65.0)
              : 270,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: controller.store.value.needHelpList.length,
            itemBuilder: (_, index) {
              var _item = controller.store.value.needHelpList[index];
              return ItemHelp(
                text: _item,
              );
            },
          ),
        );
      },
    );
  }
}
