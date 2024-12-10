
class MyNotification {
  final String image;
  final String title;
  final String body;
  final DateTime timestamp;

  MyNotification(
      {required this.image,
      required this.title,
      required this.body,
      required this.timestamp});
  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "title": title,
      "body": body,
      "timestamp": timestamp
    };
  }

  factory MyNotification.fromMap(Map<String, dynamic> map) {
    return MyNotification(
        image: map['image'] ?? "",
        title: map['title'] ?? "",
        body: map['body']??"",
        timestamp:DateTime.parse(map['timestamp']),);
  }
}
