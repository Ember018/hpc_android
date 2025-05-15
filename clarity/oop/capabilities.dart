abstract class CanPerformResurrection {
  bool attempRevival(String targetName);
}

// can i use class DrBlackAgent extends CanPerformResurrection here?
class DrBlackAgent implements CanPerformResurrection {
  bool attempRevival(String targetName) {
    print("Dr. Black begins the procedure for $targetName");
    return true;
  }
}

void main() {
  var drBlack = DrBlackAgent();
  drBlack.attempRevival("Malachite");
}
