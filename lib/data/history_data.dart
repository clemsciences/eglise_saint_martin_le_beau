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
    HistoryEvent(timestamp: DateTime(1518), text: "La chapelle sud a été construite. Elle est d'abord dédiée à sainte Catherine, puis à sainte Rose.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1520), text: "Le vaisseau nord a été construit. La chapelle à la Vierge et à saint Barbe date d'après la chapelle dédié à sainte Rose.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1810), text: "Premier cadastre de la ville. Des bâtiments occupaient la face nord de l'église. L'état du collatéral sud était sérieusement déplorable.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1826), text: "Travaux de couverture et de charpent suos la direction d'Etienne Pallu.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1829), text: "Fin des travaux.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1851), text: "Rénovation du clocher et des portes.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1872), text: "Rachat par la ville des bâtiments accolés à la face nord en vue de leurs destructions.", isImportant: true),
    HistoryEvent(timestamp: DateTime(1876), text: "Début des travaux initiés par l'abbé Brisacier qui était prêtre, architecte et scupteur. ", isImportant: true),
    HistoryEvent(timestamp: DateTime(2005), text: "Projet de destruction de la sacristie pour en refaire une sous le clocher par l'architecte Alain de Bossoreille. Le projet fut rejeté et l'ancienne sacristie demeure.", isImportant: true),
    HistoryEvent(timestamp: DateTime(2015, 4, 17), text: "Incendie des charpents du collatéral nord et du vaisseau central.", isImportant: true),
    HistoryEvent(timestamp: DateTime(2015), endTimestamp: DateTime(2019), text: "La restauration de l'église est entreprise sous la direction de Philippe Villeneuve, architecte en chef des Monuments Historiques. Il a aussi particpé à la reconstruction de Notre-Dame de Paris.", isImportant: true),
    HistoryEvent(timestamp: DateTime(2019), text: "La restauration prend fin.", isImportant: true),










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
