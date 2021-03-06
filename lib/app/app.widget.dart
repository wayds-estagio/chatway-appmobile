import 'package:chatway/app/pages/home/home.page.dart';
import 'package:chatway/app/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/chat.controller.dart';
import 'controllers/home.controller.dart';
import 'themes/light/light.theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ChatController>(
          create: (_) => ChatController(),
        ),
        Provider<HomeController>(
          create: (_) => HomeController(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatWay',
        theme: lightTheme(),
        home: HomePage(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
