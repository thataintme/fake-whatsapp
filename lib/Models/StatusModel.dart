class StatusModel {
  String name;
  String timeWithDate;
  int numberOfPosts;
  String latestPostThumbUrl;
  bool isRead = false;

  StatusModel(
      {required this.name,
      required this.timeWithDate,
      required this.numberOfPosts,
      required this.latestPostThumbUrl,
      this.isRead = false});
}
