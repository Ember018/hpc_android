class MissionAgent {
  String codename;
  String? realName;
  String role;
  String? _secretObjective;

  MissionAgent(this.codename, this.realName, this.role);

  String get objective => _secretObjective ?? "Objective Classified";

  MissionAgent.specialist(this.codename, String objective)
      : _secretObjective = objective,
        realName = null,
        role = 'Specialist' {
    print("$codename's objective is $objective");
  }

  void displayInfo() {
    print("Agent Codename: $codename");
    if (realName != null) {
      print("Agent Real Name: $realName");
    }
    print("Agent Role: $role");
  }
}

void main() {
  MissionAgent doubleShield =
      MissionAgent("Double Shield", "Harry Garfield", "Driver");
  doubleShield.displayInfo();
  MissionAgent drBlack =
      MissionAgent.specialist("Dr Black", "Resurrect Malachite");

  drBlack.displayInfo();
}
