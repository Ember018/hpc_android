void main() {
  FireDragon drazen = FireDragon("Drazen");
  IceDragon onyx = IceDragon("Onyx");


}

void dragonFight(Dragon firstDragon, Dragon secondDragon, bool attack) {
  if (firstDragon.dragonAttack(attack)) {
    secondDragon.health -= firstDragon.damage;
  }
  if (secondDragon.dragonAttack(attack)) {
    firstDragon.health -= secondDragon.damage;
  }
}

void roundInfo(Dragon firstDragon, Dragon secondDragon) {
  print("--------------------------");
  print("${firstDragon.getName()} has ${firstDragon.getHealth()} HP, ${secondDragon.getName()} has ${secondDragon.getHealth()} HP");
  print("--------------------------");
}

abstract class Dragon {
  String? name;
  late int health;
  late int damage;
  String? tribe;

  Dragon(this.name);

  String? getName() {
    return this.name;
  }

  int? getHealth() {
    return this.health;
  }

  int? getDamage() {
    return this.damage;
  }

  String? getTribe() {
    return this.tribe;
  }

  bool dragonAttack(bool attack) {
    print("i'm pacifist :)");
    return attack;
  }
}

class FireDragon extends Dragon {
  FireDragon(String name) 
    : super(name) {
      health = 800;
      damage = 200;
      tribe = 'Fire';
    }

    @override
    bool dragonAttack(bool attack) {
      print("fire attack!!");
      return attack;
    }
}

class IceDragon extends Dragon {
  IceDragon(String name)
    : super(name) {
      health = 1000;
      damage = 50;
      tribe = 'Ice';
    }

    @override
    bool dragonAttack(bool attack) {
      print("ice attack!");
      return attack;
    }
}
