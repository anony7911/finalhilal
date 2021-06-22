import 'package:finalhilal/data/message.dart';
import 'package:finalhilal/theme/app_color.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Message;
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: Text(arg.userName),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView(
            reverse: true,
            children: [
              chatBox("Hei hei hei hei hei hei", true),
              chatBox("Hei hei hei hei hei hei", false),
            ],
          )),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.textFieldColor,
                      border: InputBorder.none,
                      hintText: "Type something...",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: AppColor.secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget chatBox(String text, bool isFromMe) {
  return Row(
    mainAxisAlignment:
        isFromMe ? MainAxisAlignment.end : MainAxisAlignment.start,
    children: [
      Container(
        width: 150.0,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: isFromMe ? AppColor.secondaryColor : AppColor.textFieldColor,
            borderRadius: isFromMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(0.0))
                : BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(12.0))),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    ],
  );
}