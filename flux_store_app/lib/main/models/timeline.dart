class TimelineEvent {
  final String title;
  final String time;
  final bool isCompleted;

  TimelineEvent({
    required this.title,
    required this.time,
    required this.isCompleted,
  });
}

final List<TimelineEvent> events = [
  TimelineEvent(
    title: "Parcel is successfully delivered",
    time: "15 May 10:20",
    isCompleted: true,
  ),
  TimelineEvent(
    title: "Parcel is out for delivery",
    time: "14 May 08:00",
    isCompleted: true,
  ),
  TimelineEvent(
    title: "Parcel is received at delivery Branch",
    time: "13 May 17:25",
    isCompleted: true,
  ),
  TimelineEvent(
    title: "Parcel is in transit",
    time: "13 May 07:00",
    isCompleted: true,
  ),
  TimelineEvent(
    title: "Sender has shipped your parcel",
    time: "12 May 14:25",
    isCompleted: true,
  ),
  TimelineEvent(
    title: "Sender is preparing to ship your order",
    time: "12 May 10:01",
    isCompleted: true,
  ),
];
