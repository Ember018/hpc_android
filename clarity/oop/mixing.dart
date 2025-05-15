mixin MisinformationSource {
  int confusionLevel = 0;

  void misinterpretTopic(String topic, String incorrectAssumption) {
    print("Regarding $topic, incorrectly assumed: $incorrectAssumption");
  }

  void increaseConfusion() {
    confusionLevel++;
  }
}

class Person {
  String name;
  Person(this.name);
}

class HarryAgent extends Person with MisinformationSource {
  HarryAgent(String name) : super(name);
}

void main() {
  var harry = HarryAgent("Harry Garfield");
  print("Harry's confusion level: ${harry.confusionLevel}");
  harry.misinterpretTopic("LiveLeak", "Porn");
  harry.increaseConfusion();
  harry.increaseConfusion();
  print("Harry's confusion level: ${harry.confusionLevel}");
}
