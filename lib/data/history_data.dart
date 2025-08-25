import 'package:eglise_saint_martin_le_beau/models/history.dart';

class HistoryData {
  List<HistoryEvent> data = [
    HistoryEvent(
      timestamp: DateTime(900),
      endTimestamp: DateTime(1000),
      text:
          "Edification d'une chapelle à l'emplacement du champ de bataille entre les Normands et les Tourangeaux. Les Tourangeaux furent vainqueurs.",
      isImportant: true,
    ),
    HistoryEvent(
      timestamp: DateTime(1050),
      endTimestamp: DateTime(1100),
      text: "Le clocher qui existe encore aujourd'hui date de cette époque. Le portail ouest qui date de cette époque a été fortement rénové au XIXe siècle.",
      isImportant: true,
    ),
    HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: "Le vaisseau central de la nef a été construit",
        isImportant: true),
    HistoryEvent(timestamp: DateTime(1150), endTimestamp: DateTime(1250), text: "Le choeur et l'abside ont été construit.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1450), endTimestamp: DateTime(1525), text: "Construction du vaisseau sud.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1518), text: "La chapelle sud a été construite. Elle est d'abord dédiée à sainte Catherine, puis à sainte Rose.", isImportant: true)



    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
    // HistoryEvent(timestamp: DateTime(1100), endTimestamp: DateTime(1200), text: ".", isImportant: true),
  ];
}
