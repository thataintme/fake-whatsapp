import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:fake_whatsapp/Models/ChatModel.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

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
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
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
                    Icons.double_arrow,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  )
                ] else ...[
                  Icon(
                    Icons.double_arrow,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
                Text(dummyData[index].message,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
