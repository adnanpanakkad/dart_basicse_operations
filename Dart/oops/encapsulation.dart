class BankAccount {
  // Private property, not accessible directly from outside the class
  double _balance;

  // Constructor to initialize balance
  BankAccount(this._balance);

  // Getter to retrieve the balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

void main() {
  BankAccount account = BankAccount(1000.0);
  
  account.deposit(500.0);
  account.withdraw(200.0);
  
  print('Account balance: ${account.balance}'); // Output: Account balance: 1300.0
}
