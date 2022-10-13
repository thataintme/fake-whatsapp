class ChatModel {
  final String name;
  String message;
  String time;
  String dpUrl;
  String status;
  bool isRead;
  bool tick;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.dpUrl,
      required this.status,
      this.isRead = false,
      this.tick = true});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Deadpool",
      message: "where r u",
      time: "18:53",
      dpUrl: "",
      status: "none",
      isRead: false),
  ChatModel(
      name: "Kelvin",
      message: "U now rich yet?",
      time: "16:27",
      dpUrl: "",
      status: "none",
      isRead: true)
];
