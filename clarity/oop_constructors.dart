import 'dart:math';

class Accommodation {
  String type;
  int numberOfRooms;
  final String location;

  // Standard constructor
  Accommodation(this.type, this.numberOfRooms) : location = 'Los Xantos' {
    print('Standard Accommodation created: $type at $location');
  }

// Named constructor
  Accommodation.entireHotel(String hotelName, {int estimatedRooms = 200})
      : type = 'Entire Hotel ($hotelName)',
        numberOfRooms = estimatedRooms,
        location = 'Los Xantos - Downtown' {
    print("Named Constructor: Starblade booked the whole place!");
  }

  // Named constructor for modest needs
  Accommodation.hqSpareRoom()
      : type = "Spare Room at HQ",
        numberOfRooms = 1,
        location = 'Los Xantos - HQ' {
    print("Named Constructor: A more...budget-friendly option.");
  }

  // Factory constructor
  factory Accommodation.randomOption() {
    var options = ['Tents', 'Shared Dorm', 'Reasonable Apartment'];
    var randomType = options[Random().nextInt(options.length)];
    return Accommodation(randomType, Random().nextInt(5) + 1);
  }

  void display() {
    print(' -> Type: $type, Rooms $numberOfRooms, Location: $location');
  }
}

void main() {
  var starbladeHousing = Accommodation.entireHotel('Royal Xantos');
  starbladeHousing.display();

  var potentialP4Housing = Accommodation.hqSpareRoom();
  potentialP4Housing.display();

  var standardOption = Accommodation('Apartment', 3);
  standardOption.display();

  var random = Accommodation.randomOption();
  print("\n Random Factory Option:");
  random.display();
}
