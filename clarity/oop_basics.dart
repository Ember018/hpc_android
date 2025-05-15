class ParagonMember {
  String codename;
  String civilianName;
  int paragonBranch;
  bool isTeamLeader = false;

  ParagonMember(this.codename, this.civilianName, this.paragonBranch);

  void displayInfo() {
    print("--- Paragon Member ---");
    print('Codename: $codename (aka $civilianName)');
    print('Branch: $paragonBranch');
    if (isTeamLeader) {
      print("Role: Team Leader");
    }
  }
}

void main() {
  ParagonMember starblade = ParagonMember('Starblade', 'Aria Luce', 0);
  ParagonMember tetris = ParagonMember("Tetris", "Jeanne Bellweather", 4);
  ParagonMember captainVegan = ParagonMember("Captain Vegan", "Chalvary", 4);
  captainVegan.isTeamLeader = true;

  starblade.displayInfo();
  tetris.displayInfo();
  captainVegan.displayInfo();
}
