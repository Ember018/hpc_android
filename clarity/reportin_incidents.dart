void reportSighting(
    {required String location,
    required String description,
    int? witnessCount}) {
  print("INCIDENT REPORT");
  print("Location: $location");
  print("Description: $description");
  if (witnessCount != null) {
    print("Witness count: $witnessCount");
  }
}

void main() {
  reportSighting(
      location: 'Western Suburbs',
      description: 'Clowns hiding in backyards at night',
      witnessCount: 2);
}
