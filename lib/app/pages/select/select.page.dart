import 'package:chatway/app/controllers/chat.controller.dart';
import 'package:chatway/app/pages/home/home.page.dart';
import 'package:chatway/app/pages/home_atendente/home_atendente.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatController>(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 150, bottom: 50),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/icon/icon_launcher.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Chat Way",
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Motorista",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Observer(builder: (_) {
                        return Switch(
                          value: controller.isAtendente,
                          onChanged: (bool value) {
                            controller.setIsAtendentes(value);
                          },
                        );
                      }),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Atendente",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (controller.isAtendente) {
                        {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  HomeAtendentePage(),
                            ),
                          );
                        }
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),
                        );
                      }
                    },
                    color: Colors.white,
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
