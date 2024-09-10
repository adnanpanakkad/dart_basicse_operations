class BanckAccount {
  double _balence;

  BanckAccount(this._balence);

  double get balence => _balence;
  void deposit(double amount) {
    if (amount > 0) {
      _balence += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && balence <= _balence) {
      _balence -= amount;
    }
  }
}

void main() {
  BanckAccount account = BanckAccount(1000);
  account.deposit(500);
  account.withdraw(100);
  print('account current balence = ${account._balence}');
}
