import 'package:flutter/material.dart';
import 'package:fake_whatsapp/Assets/CustomTextStyles.dart';
import 'package:fake_whatsapp/Models/CallsModel.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
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
            leading:
                const CircleAvatar(), //This place should have profile picture
            title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dummyData[index].name,
                      style: CustomTextStyles.nameTestStyle),
                  Row(
                    children: [
                      if (dummyData[index].callType.toLowerCase() ==
                          "outgoing") ...[
                        Icon(
                          Icons.call_made,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ] else if (dummyData[index].callType.toLowerCase() ==
                          "incoming") ...[
                        Icon(
                          Icons.call_received,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ] else ...[
                        Icon(
                          Icons.call_received,
                          color: Colors.red,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                      Text(
                        dummyData[index].timeWithDate,
                        style: CustomTextStyles.subtitleTextStyle,
                      ),
                    ],
                  )
                ]),
            trailing: Icon(
              Icons.phone,
              color: Color.fromARGB(141, 0, 255, 170),
            ),
          )
        ],
      ),
    );
  }
}
