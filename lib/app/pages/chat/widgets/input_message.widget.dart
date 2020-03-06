import 'package:chatway/app/controllers/chat.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class InputTextMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatController>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: controller.inputMessageController,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Digite uma mensagem',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 18.0,
                        ),
                        counterText: '',
                      ),
                      onChanged: controller.setInputMessage,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      maxLength: 200,
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.camera_alt,
                            size: 25,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Observer(builder: (_) {
            return Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: FloatingActionButton(
                mini: true,
                elevation: 2.0,
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                child: controller.inputMessage.isEmpty
                    ? Icon(Icons.settings_voice)
                    : Icon(Icons.send),
                onPressed: () {
                  controller
                      .sendMessage(controller.inputMessageController.text);
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
