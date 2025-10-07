class BankAccount {
  double _balance;  

  BankAccount(this._balance);
  
  // Getter for balance
  double get balance => _balance; // Read-only access

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }

}

void main() {
  BankAccount account = BankAccount(1240);
  account.deposit(12);
  account.withdraw(52);
  print('Current Balance: \$${account.balance}'); // Accessing balance via the getter
}
