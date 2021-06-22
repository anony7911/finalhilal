import 'package:finalhilal/data/message.dart';
import 'package:finalhilal/theme/app_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _bgColor = Color(0xFF252837);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          elevation: 0.0,
          title: Text("Chat"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Resent Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: Message.messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/ChatScreen",
                        arguments: Message.messages[index]);
                  },
                  horizontalTitleGap: 4.0,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(Message.messages[index].avatar),
                    radius: 32.0,
                  ),
                  title: Text(
                    Message.messages[index].userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    Message.messages[index].snippet,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Change Background',
        onPressed: () {
          setState(() {
            _bgColor = Color(0xFF777cfe);
          });
        },
        child: Icon(Icons.change_circle),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.mainColor,
        items: [
          BottomNavigationBarItem(
              tooltip: 'Person',
              title: Text("Person"),
              icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              tooltip: 'Settings',
              title: Text("Settings"),
              icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
