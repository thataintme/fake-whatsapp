import 'package:fake_whatsapp/Assets/CustomTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:fake_whatsapp/Models/StatusModel.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
            title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dummyData[index].name,
                      style: CustomTextStyles.nameTestStyle),
                  Text(
                    dummyData[index].timeWithDate,
                    style: CustomTextStyles.subtitleTextStyle,
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
