class CallsModel {
  String name;
  String timeWithDate;
  String profilePicUrl;
  String callType;

  CallsModel({
    required this.name,
    required this.timeWithDate,
    this.profilePicUrl = "",
    required this.callType,
  });
}

List<CallsModel> dummyData = [
  CallsModel(
    name: "Person 1",
    timeWithDate: "Today, 21:45",
    profilePicUrl: "",
    callType: "incoming",
  ),
  CallsModel(
    name: "Person 2",
    timeWithDate: "Today, 19:19",
    profilePicUrl: "",
    callType: "outgoing",
  ),
  CallsModel(
    name: "Person 3",
    timeWithDate: "Today, 19:19",
    profilePicUrl: "",
    callType: "missed",
  ),
];
