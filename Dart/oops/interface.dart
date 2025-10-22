class Printer {
  void printData() {
    print("Printing data...");
  }
}

// Implementing the interface
class HPPrinter implements Printer {
  @override
  void printData() {
    print("Printing from HP printer...");
  }
}

void main() {
  HPPrinter hp = HPPrinter();
  hp.printData();
}
