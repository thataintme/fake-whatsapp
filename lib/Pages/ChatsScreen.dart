import 'dart:js_util';

import 'package:fake_whatsapp/Assets/CustomTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:fake_whatsapp/Models/ChatModel.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[index].name,
                    style: CustomTextStyles.nameTestStyle,
                  ),
                  Text(
                    dummyData[index].time,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ]),
            subtitle: Row(
              children: [
                if (!dummyData[index].tick)
                  ...[]
                else if (dummyData[index].isRead) ...[
                  Icon(
                    Icons.check,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  )
                ] else ...[
                  Icon(
                    Icons.check,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
                Text(
                  dummyData[index].message,
                  style: CustomTextStyles.subtitleTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
