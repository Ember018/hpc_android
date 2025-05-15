void main() {
  int startbladeReactionLevel = 200;

  if (startbladeReactionLevel < 4) {
    print("Maintaining composure");
  } else if (startbladeReactionLevel < 7) {
    print("Show annoyance");
  } else if (startbladeReactionLevel < 10) {
    print("Deeply unprofessional observed");
  } else {
    print("Approaching critical meltdown!");
  }
}
