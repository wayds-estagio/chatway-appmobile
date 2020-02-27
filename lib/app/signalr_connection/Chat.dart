import 'dart:async';
import 'package:signalr_client/signalr_client.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  List<String> chats = List<String>();
  HubConnection connection;

  @override
  void initState() {
    super.initState();
    createSignalRConnection();
  }

  Future<void> createSignalRConnection() async {
    connection = HubConnectionBuilder()
        .withUrl("http://192.168.1.159:5000/ChatWay")
        .build();

    await connection.start();
    connection.invoke("AddId", args: ["Rodrigo e Marcos"]);
    connection.invoke("Send", args: ["Venicyus estou enviando mensagem"]);

    connection.on("Receive", (data) {
      print(data.toString());
      chats.add(data[0].toString());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(chats[index]);
        },
      ),
    );
  }
}
