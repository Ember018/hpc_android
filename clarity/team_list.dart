void main() {
  List<String> p4Attendees = [
    "Captain Vegan",
    "Tetris",
    "Gunner II",
    "Hornet",
    "Positive",
    "Ballooner",
    "Starblade"
  ];

  Map<String, String> activeTransfer = {
    'Caseclose': 'Paragons 2',
    'Hopeless Love': 'Paragons 0',
    'Enjoyman': 'Paragons 3',
    'Starblade': 'Paragons 4',
    'Rejected Art Student': 'Paragons 0'
  };

  for (var p4Attendee in p4Attendees) {
    print(p4Attendee);
  }
  print(p4Attendees.length);

  p4Attendees.remove("Ballooner");
  for (var p4Attendee in p4Attendees) {
    print(p4Attendee);
  }
  print(p4Attendees.length);
}
