void main() {
  print("Hi Dart!");

  var skills = ['Phasing', 'Enhanced Hearing', 'Combat'];

  List<String> ashSkills = ['Gaming', 'Typing angrily', 'Journaling'];

  Map<String, dynamic> journalEntry = {
    'timestamp': DateTime.now(),
    'mood': 'Angry/Tired',
    'privacyConcern': true,
    'message_length': 150
  };

  print("\nAsh Journal Entry: ");
  print(" Mood: ${journalEntry['mood']}");
  print(" Timestamp: ${journalEntry['timestamp']}");

  String greeting(String name) => "Hello $name";

  print(greeting("dog"));
}
