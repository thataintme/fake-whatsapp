class StatusModel {
  String name;
  String timeWithDate;
  int numberUnreadPosts;
  int numberReadPosts;
  String latestPostThumbUrl;

  StatusModel({
    required this.name,
    required this.timeWithDate,
    required this.numberUnreadPosts,
    required this.numberReadPosts,
    required this.latestPostThumbUrl,
  });
}

List<StatusModel> dummyData = [
  StatusModel(
      name: "Ray",
      timeWithDate: "Today, 21:45",
      numberReadPosts: 5,
      numberUnreadPosts: 2,
      latestPostThumbUrl: ""),
  StatusModel(
      name: "Vishnu",
      timeWithDate: "Today, 19:19",
      numberReadPosts: 2,
      numberUnreadPosts: 0,
      latestPostThumbUrl: ""),
];
