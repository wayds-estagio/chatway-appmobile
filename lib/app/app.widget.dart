import 'package:chatway/app/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/chat.controller.dart';
import 'controllers/chats_attended.controller.dart';
import 'controllers/chats_open.controller.dart';
import 'controllers/home.controller.dart';
import 'pages/select/select.page.dart';
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
        Provider<ChatsOpenController>(
          create: (_) => ChatsOpenController(),
        ),
        Provider<ChatsAttendedController>(
          create: (_) => ChatsAttendedController(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatWay',
        theme: lightTheme(),
        home: SelectPage(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
